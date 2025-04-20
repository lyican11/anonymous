import pandas as pd
import requests
import time
import openpyxl
from tqdm import tqdm

# replace your GitHub token
GITHUB_TOKEN = "github_token"
INPUT_FILE = "RQ4_input.xlsx"  # input file
OUTPUT_FILE = "RQ4_result.xlsx"  # output file name

# OS -> [owner, repo]）
REPO_MAP = {
    "linux": ["torvalds", "linux"],
    "freebsd": ["freebsd", "freebsd-src"],
    "openbsd": ["openbsd", "src"],
    "zephyr": ["zephyrproject-rtos", "zephyr"],
    "serenity": ["SerenityOS", "serenity"],
    "reactos": ["reactos", "reactos"],
    "aros": ["aros-development-team", "AROS"]
}


def get_commit_stats(owner, repo, sha, token):
    url = f"https://api.github.com/repos/{owner}/{repo}/commits/{sha}"
    headers = {
        "Authorization": f"token {token}",
        "Accept": "application/vnd.github.v3+json"
    }

    try:
        response = requests.get(url, headers=headers, timeout=10)
        response.raise_for_status()
        data = response.json()

        return {
            "add": data["stats"]["additions"],
            "delete": data["stats"]["deletions"],
            "total": data["stats"]["total"]
        }
    except requests.exceptions.RequestException as e:
        print(f"\nrequest fail: {str(e)}")
        return {"add": None, "delete": None, "total": None}
    except KeyError:
        print(f"\nKey error")
        return {"add": None, "delete": None, "total": None}


def main():
    # read the input Excel file
    df = pd.read_excel(INPUT_FILE)

    df["add"] = None
    df["delete"] = None
    df["total"] = None

    # handle every line
    for index, row in tqdm(df.iterrows(), total=len(df)):
        os_name = row["OS"]
        commit_sha = row["Commit"]

        # obtain the information of repository
        if os_name not in REPO_MAP:
            print(f"\nunknown OS: {os_name}")
            continue

        owner, repo = REPO_MAP[os_name]

        # use API to get the data
        stats = get_commit_stats(owner, repo, commit_sha, GITHUB_TOKEN)

        # write in
        df.at[index, "add"] = stats["add"]
        df.at[index, "delete"] = stats["delete"]
        df.at[index, "total"] = stats["total"]

        time.sleep(1)

    df.to_excel(OUTPUT_FILE, index=False)
    print(f"\nComplete！The result is saved into {OUTPUT_FILE}")


if __name__ == "__main__":
    main()