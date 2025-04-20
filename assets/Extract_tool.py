import pymysql
import re
import csv
import pandas as pd
import requests
from bs4 import BeautifulSoup

# --- Configuration ---
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': 'Chz20030503',
    'database': 'bugs',
    'charset': 'utf8mb4',
}

BUG_PATTERNS = {
    "llvm": r"(https?://bugs\.llvm\.org/show_bug\.cgi\?id=\d+)",
    "llvm issues": r"(https?://github\.com/llvm/llvm-project/issues/\d+)",
    "gcc": r"(https?://gcc\.gnu\.org/bugzilla/show_bug\.cgi\?id=\d+)",
    "msvc": r"(https?://developercommunity\.visualstudio\.com/content/problem/\d+)"
}

# --- Phase 1: Extract URL from DB ---
def connect_db():
    return pymysql.connect(**DB_CONFIG)

def fetch_data(table_name):
    with connect_db() as connection:
        with connection.cursor(pymysql.cursors.DictCursor) as cursor:
            cursor.execute(f"SELECT * FROM {table_name}")
            return cursor.fetchall()

def extract_bug_ids(data, field='comment'):
    extracted = []
    no_match_ids = []

    for row in data:
        record_id = row.get('id', '')
        project_name = row.get('project_name', 'unknown')
        author_name = row.get('author', 'unknown')
        comment = row.get(field, '')
        date = row.get('date', '')
        matched = False

        for source, pattern in BUG_PATTERNS.items():
            matches = re.findall(pattern, comment)
            for url in matches:
                bug_id = re.search(r'\d+', url).group()
                extracted.append({
                    'record_id': record_id,
                    'bug_id': bug_id,
                    'source': source,
                    'url': url,
                    'project': project_name,
                    'author': author_name,
                    'date': date
                })
                matched = True

        if not matched:
            no_match_ids.append(record_id)

    if no_match_ids:
        print("IDs with no matched bug ID:", ", ".join(map(str, no_match_ids)))
    return extracted

def save_table_data(data, file="table_data.csv"):
    with open(file, 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(["Record ID", "Bug ID", "Author", "Source", "URL", "Project", "CommitDate"])
        for row in data:
            writer.writerow([row['record_id'], row['bug_id'], row['author'], row['source'], row['url'], row['project'], row['date']])

# --- Phase 2: Remove duplicates ---
def deduplicate_table_data(input_csv="table_data.csv", output_csv="unique_url_data.csv"):
    df = pd.read_csv(input_csv)
    df_unique = df.drop_duplicates(subset=['Bug ID', 'Record ID'])
    df_unique.to_csv(output_csv, index=False)
    print(f"Deduplicated data saved to {output_csv}")

# --- Phase 3: Crawl additional bug info ---
def extract_bug_details(source, bug_url):
    try:
        response = requests.get(bug_url, timeout=10)
        response.raise_for_status()
        soup = BeautifulSoup(response.text, 'html.parser')

        reported_by, report_date, keyword = "Not Found", "unknown", "Not Found"

        if source in ['gcc', 'llvm']:
            reported_by_td = soup.find('td', {'id': 'bz_show_bug_column_2'})
            if reported_by_td:
                span = reported_by_td.find('span', {'class': 'fn'})
                reported_by = span.text if span else "Not Found"
                match = re.search(r"\d{4}-\d{2}-\d{2}", reported_by_td.text)
                if match:
                    report_date = match.group(0)

        keyword_td = soup.find('td', {'id': 'field_container_keywords'})
        if keyword_td:
            keyword = keyword_td.text.strip()

        return reported_by, keyword, report_date

    except Exception as e:
        print(f"[ERROR] {bug_url}: {e}")
        return "Error", "Error", "Error"

def crawl_bug_info(input_csv="unique_url_data.csv", output_csv="more_info.csv", error_log="error_log.txt"):
    with open(output_csv, 'w', newline='', encoding='utf-8-sig') as out_file:
        writer = csv.writer(out_file)
        writer.writerow(["Bug ID", "Project Name", "Record ID", "Author", "Reported By", "Keyword", "CommitDate", "ReportDate"])

    with open(input_csv, 'r', encoding='utf-8-sig') as f:
        reader = csv.DictReader(f)
        for row in reader:
            bug_id = row['Bug ID']
            record_id = row['Record ID']
            source = row['Source']
            url = row['URL']
            project = row['Project']
            author = row['Author']
            date = row['CommitDate']

            reported_by, keyword, report_date = extract_bug_details(source, url)

            if reported_by == "Error":
                with open(error_log, 'a', encoding='utf-8') as log:
                    log.write(f"Failed to fetch: {url} (Record ID: {record_id})\n")
                continue

            with open(output_csv, 'a', newline='', encoding='utf-8-sig') as out_file:
                writer = csv.writer(out_file)
                writer.writerow([bug_id, project, record_id, author, reported_by, keyword, date, report_date])
            print(f"{source.upper()} - Bug {bug_id} processed.")

# --- Run Pipeline ---
def main():
    print("Fetching data from database...")
    raw_data = fetch_data("compiler_table")

    print("Extracting bug URLs...")
    extracted_data = extract_bug_ids(raw_data)
    save_table_data(extracted_data)

    print("Removing duplicate bug-project entries...")
    deduplicate_table_data()

    print("Crawling bug tracker details...")
    crawl_bug_info()

    print("✅ All steps completed successfully.")

if __name__ == "__main__":
    main()
