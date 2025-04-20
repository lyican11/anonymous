create table compiler_table
(
    project_name varchar(45)  null,
    id           varchar(45)  null,
    date         date         null,
    author       varchar(45)  null,
    title        varchar(245) null,
    comment      longtext     null
);

INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('aros', 'eb56b10', '2013-06-03', 'ezrec', 'arch/m68k-amiga: Don\'t forget .text.unlikely and friends when linking', 'arch/m68k-amiga: Don\'t forget .text.unlikely and friends when linking

See GCC 4.6.x issue:

http://gcc.gnu.org/bugzilla/show_bug.cgi?id=45781

Signed-off-by: Jason S. McMullan <jason.mcmullan@gmail.com>

git-svn-id: https://svn.aros.org/svn/aros/trunk@47504 fb15a70f-31f2-0310-bbcc-cdcc74a49acc
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('aros', 'aac5b3d', '2012-11-29', 'ezrec', 'gcc-4.6.2: Update with patch for gengtype.c', 'gcc-4.6.2: Update with patch for gengtype.c

See http://gcc.gnu.org/bugzilla/show_bug.cgi?id=51969

Signed-off-by: Jason S. McMullan <jason.mcmullan@gmail.com>

git-svn-id: https://svn.aros.org/svn/aros/trunk@46113 fb15a70f-31f2-0310-bbcc-cdcc74a49acc
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'f32e563', '2020-12-12', 'rlibby', 'fdgrowtable_test.c: appease gcc', 'fdgrowtable_test.c: appease gcc

Work around bogus gcc -Wreturn-type.

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=44511

Reviewed by:	kevans, rew
Sponsored by:	Dell EMC Isilon
Differential Revision:	https://reviews.freebsd.org/D27563
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '6d75905', '2020-12-12', 'Ryan Libby', 'fdgrowtable_test.c: appease gcc', 'fdgrowtable_test.c: appease gcc

Work around bogus gcc -Wreturn-type.

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=44511

Reviewed by:	kevans, rew
Sponsored by:	Dell EMC Isilon
Differential Revision:	https://reviews.freebsd.org/D27563
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '9f897bf', '2020-11-08', 'dim', 'Merge commit 354d3106c from llvm git (by Kai Luo):', 'Merge commit 354d3106c from llvm git (by Kai Luo):

  [PowerPC] Skip combining (uint_to_fp x) if x is not simple type

  Current powerpc64le backend hits
  ```
  Combining: t7: f64 = uint_to_fp t6
  llc: llvm-project/llvm/include/llvm/CodeGen/ValueTypes.h:291:
  llvm::MVT llvm::EVT::getSimpleVT() const: Assertion `isSimple() &&
  "Expected a SimpleValueType!"\' failed.
  ```
  This patch fixes it by skipping combination if `t6` is not simple
  type.
  Fixed https://bugs.llvm.org/show_bug.cgi?id=47660.

  Reviewed By: #powerpc, steven.zhang

  Differential Revision: https://reviews.llvm.org/D88388

This should fix the llvm assertion mentioned above when building the
following ports for powerpc64le:

* audio/traverso
* databases/percona57-pam-for-mysql
* databases/percona57-server
* emulators/citra
* emulators/citra-qt5
* games/7kaa
* graphics/dia
* graphics/mandelbulber
* graphics/pcl-pointclouds
* net-p2p/libtorrent-rasterbar
* textproc/htmldoc

Requested by:	pkubaj
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '1ee2434', '2020-11-08', 'Dimitry Andric', 'Merge commit 354d3106c from llvm git (by Kai Luo):', 'Merge commit 354d3106c from llvm git (by Kai Luo):

  [PowerPC] Skip combining (uint_to_fp x) if x is not simple type

  Current powerpc64le backend hits
  ```
  Combining: t7: f64 = uint_to_fp t6
  llc: llvm-project/llvm/include/llvm/CodeGen/ValueTypes.h:291:
  llvm::MVT llvm::EVT::getSimpleVT() const: Assertion `isSimple() &&
  "Expected a SimpleValueType!"\' failed.
  ```
  This patch fixes it by skipping combination if `t6` is not simple
  type.
  Fixed https://bugs.llvm.org/show_bug.cgi?id=47660.

  Reviewed By: #powerpc, steven.zhang

  Differential Revision: https://reviews.llvm.org/D88388

This should fix the llvm assertion mentioned above when building the
following ports for powerpc64le:

* audio/traverso
* databases/percona57-pam-for-mysql
* databases/percona57-server
* emulators/citra
* emulators/citra-qt5
* games/7kaa
* graphics/dia
* graphics/mandelbulber
* graphics/pcl-pointclouds
* net-p2p/libtorrent-rasterbar
* textproc/htmldoc

Requested by:	pkubaj
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '89c1e83', '2020-10-14', 'arichardson', 'Don\'t build the malo module with clang 10', 'Don\'t build the malo module with clang 10

Compiling it with LLVM 10 triggers https://bugs.llvm.org/show_bug.cgi?id=44351
While LLVM 11 is the default compiler, I regularly build with
CROSS_TOOLCHAIN=llvm10 or use system packages for clang on Linux/macOS and
those have not been updated to 11 yet.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'a31993f', '2020-10-14', 'Alex Richardson', 'Don\'t build the malo module with clang 10', 'Don\'t build the malo module with clang 10

Compiling it with LLVM 10 triggers https://bugs.llvm.org/show_bug.cgi?id=44351
While LLVM 11 is the default compiler, I regularly build with
CROSS_TOOLCHAIN=llvm10 or use system packages for clang on Linux/macOS and
those have not been updated to 11 yet.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '5a8dc1c', '2020-09-10', 'arichardson', 'Silence GCC\'s -Wno-unused-result during bootstrap', 'Silence GCC\'s -Wno-unused-result during bootstrap

Unlike clang, GCC still warns even with (void) casts (https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66425)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '0a81de3', '2020-09-10', 'Alex Richardson', 'Silence GCC\'s -Wno-unused-result during bootstrap', 'Silence GCC\'s -Wno-unused-result during bootstrap

Unlike clang, GCC still warns even with (void) casts (https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66425)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '2005f26', '2020-08-18', 'dim', 'Merge commit 4d52ebb9b9c7 from llvm git (by Chen Zheng):', 'Merge commit 4d52ebb9b9c7 from llvm git (by Chen Zheng):

  [PowerPC] Make StartMI ignore COPY like instructions.

  Reviewed By: lkail

  Differential Revision: https://reviews.llvm.org/D85659

This fixes an assertion failure when building world for powerpc. It was
reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=47041>.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '987992b', '2020-08-18', 'Dimitry Andric', 'Merge commit 4d52ebb9b9c7 from llvm git (by Chen Zheng):', 'Merge commit 4d52ebb9b9c7 from llvm git (by Chen Zheng):

  [PowerPC] Make StartMI ignore COPY like instructions.

  Reviewed By: lkail

  Differential Revision: https://reviews.llvm.org/D85659

This fixes an assertion failure when building world for powerpc. It was
reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=47041>.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '5006722', '2020-08-18', 'dim', 'Revert r364275, for reapplying the final upstream fix:', 'Revert r364275, for reapplying the final upstream fix:

Tentatively apply https://reviews.llvm.org/D85659, which fixes an
assertion failure when building world for powerpc. This has been
reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=47041>.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '30e9d23', '2020-08-18', 'Dimitry Andric', 'Revert r364275, for reapplying the final upstream fix:', 'Revert r364275, for reapplying the final upstream fix:

Tentatively apply https://reviews.llvm.org/D85659, which fixes an
assertion failure when building world for powerpc. This has been
reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=47041>.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b70eba5', '2020-08-17', 'dim', 'Tentatively apply https://reviews.llvm.org/D85659, which fixes an assertion failure when building world for powerpc. This has been reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=47041>.', 'Tentatively apply https://reviews.llvm.org/D85659, which fixes an
assertion failure when building world for powerpc. This has been
reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=47041>.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b4e0f67', '2020-08-17', 'Dimitry Andric', 'Tentatively apply https://reviews.llvm.org/D85659, which fixes an assertion failure when building world for powerpc. This has been reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=47041>.', 'Tentatively apply https://reviews.llvm.org/D85659, which fixes an
assertion failure when building world for powerpc. This has been
reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=47041>.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'a362d17', '2020-08-16', 'dim', 'Temporarily disable libunwind\'s FrameHeaderCache, until there is a resolution for <https://bugs.llvm.org/show_bug.cgi?id=47181>.', 'Temporarily disable libunwind\'s FrameHeaderCache, until there is a
resolution for <https://bugs.llvm.org/show_bug.cgi?id=47181>.

The cache implementation depends on dl_iterate_phdr(3) ensuring that its
callbacks are not called simultaneously for multiple threads, but that
is only the case for the dl_iterate_phdr() implementation in rtld.

In a statically linked executable, libc\'s dl_iterate_phdr() is used,
which does no such locking. If multiple threads then call into the
unwinder at the same time, it is possible to trigger a segfault.

In particular, the statically linked lld which is built during the
cross-tools stage can segfault in this way, because it starts multiple
worker threads that can exit in parallel. Since our pthread_exit(3)
invokes the unwinder, it will therefore call into it in parallel too.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '9ff1cc5', '2020-08-16', 'Dimitry Andric', 'Temporarily disable libunwind\'s FrameHeaderCache, until there is a resolution for <https://bugs.llvm.org/show_bug.cgi?id=47181>.', 'Temporarily disable libunwind\'s FrameHeaderCache, until there is a
resolution for <https://bugs.llvm.org/show_bug.cgi?id=47181>.

The cache implementation depends on dl_iterate_phdr(3) ensuring that its
callbacks are not called simultaneously for multiple threads, but that
is only the case for the dl_iterate_phdr() implementation in rtld.

In a statically linked executable, libc\'s dl_iterate_phdr() is used,
which does no such locking. If multiple threads then call into the
unwinder at the same time, it is possible to trigger a segfault.

In particular, the statically linked lld which is built during the
cross-tools stage can segfault in this way, because it starts multiple
worker threads that can exit in parallel. Since our pthread_exit(3)
invokes the unwinder, it will therefore call into it in parallel too.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'dd5d004', '2020-04-21', 'dim', 'Merge commit 64b31d96d from llvm git (by Nemanja Ivanovic):', 'Merge commit 64b31d96d from llvm git (by Nemanja Ivanovic):

  [PowerPC] Do not attempt to reuse load for 64-bit FP_TO_UINT without
  FPCVT

  We call the function that attempts to reuse the conversion without
  checking whether the target matches the constraints that the callee
  expects. This patch adds the check prior to the call.

  Fixes: https://bugs.llvm.org/show_bug.cgi?id=43976

  Differential revision: https://reviews.llvm.org/D77564

This should fix \'Assertion failed: ((Op.getOpcode() == ISD::FP_TO_SINT
|| Subtarget.hasFPCVT()) && "i64 FP_TO_UINT is supported only with
FPCVT"), function LowerFP_TO_INTForReuse, file
/usr/src/contrib/llvm/lib/Target/PowerPC/PPCISelLowering.cpp, line 7276\'
when building the devel/libslang2 port (and a few others) for PowerPC64.

Requested by:	pkubaj
MFC after:	6 weeks
X-MFC-With:	358851
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '5c94a87', '2020-04-21', 'Dimitry Andric', 'Merge commit 64b31d96d from llvm git (by Nemanja Ivanovic):', 'Merge commit 64b31d96d from llvm git (by Nemanja Ivanovic):

  [PowerPC] Do not attempt to reuse load for 64-bit FP_TO_UINT without
  FPCVT

  We call the function that attempts to reuse the conversion without
  checking whether the target matches the constraints that the callee
  expects. This patch adds the check prior to the call.

  Fixes: https://bugs.llvm.org/show_bug.cgi?id=43976

  Differential revision: https://reviews.llvm.org/D77564

This should fix \'Assertion failed: ((Op.getOpcode() == ISD::FP_TO_SINT
|| Subtarget.hasFPCVT()) && "i64 FP_TO_UINT is supported only with
FPCVT"), function LowerFP_TO_INTForReuse, file
/usr/src/contrib/llvm/lib/Target/PowerPC/PPCISelLowering.cpp, line 7276\'
when building the devel/libslang2 port (and a few others) for PowerPC64.

Requested by:	pkubaj
MFC after:	6 weeks
X-MFC-With:	358851
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '6f7003b', '2020-04-16', 'dim', 'Revert commit a9ad65a2b from llvm git (by Nemanja Ivanovic):', 'Revert commit a9ad65a2b from llvm git (by Nemanja Ivanovic):

  [PowerPC] Change default for unaligned FP access for older subtargets

  This is a fix for https://bugs.llvm.org/show_bug.cgi?id=40554

  Some CPU\'s trap to the kernel on unaligned floating point access and
  there are kernels that do not handle the interrupt. The program then
  fails with a SIGBUS according to the PR. This just switches the
  default for unaligned access to only allow it on recent server CPUs
  that are known to allow this.

  Differential revision: https://reviews.llvm.org/D71954

This upstream commit causes a compiler hang when building certain ports
(e.g. security/nss, multimedia/x264) for powerpc64.  The hang has been
reported in https://bugs.llvm.org/show_bug.cgi?id=45186, but in the mean
time it is more convenient to revert the commit.

Requested by:	jhibbits
MFC after:	6 weeks
X-MFC-With:	358851
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'f64e2fa', '2020-04-16', 'Dimitry Andric', 'Revert commit a9ad65a2b from llvm git (by Nemanja Ivanovic):', 'Revert commit a9ad65a2b from llvm git (by Nemanja Ivanovic):

  [PowerPC] Change default for unaligned FP access for older subtargets

  This is a fix for https://bugs.llvm.org/show_bug.cgi?id=40554

  Some CPU\'s trap to the kernel on unaligned floating point access and
  there are kernels that do not handle the interrupt. The program then
  fails with a SIGBUS according to the PR. This just switches the
  default for unaligned access to only allow it on recent server CPUs
  that are known to allow this.

  Differential revision: https://reviews.llvm.org/D71954

This upstream commit causes a compiler hang when building certain ports
(e.g. security/nss, multimedia/x264) for powerpc64.  The hang has been
reported in https://bugs.llvm.org/show_bug.cgi?id=45186, but in the mean
time it is more convenient to revert the commit.

Requested by:	jhibbits
MFC after:	6 weeks
X-MFC-With:	358851
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '72724ec', '2020-03-19', 'dim', 'Merge commit b8ebc11f0 from llvm git (by Sanjay Patel):', 'Merge commit b8ebc11f0 from llvm git (by Sanjay Patel):

  [EarlyCSE] avoid crashing when detecting min/max/abs patterns (PR41083)

  As discussed in PR41083:
  https://bugs.llvm.org/show_bug.cgi?id=41083
  ...we can assert/crash in EarlyCSE using the current hashing scheme
  and instructions with flags.

  ValueTracking\'s matchSelectPattern() may rely on overflow (nsw, etc)
  or other flags when detecting patterns such as min/max/abs composed
  of compare+select. But the value numbering / hashing mechanism used
  by EarlyCSE intersects those flags to allow more CSE.

  Several alternatives to solve this are discussed in the bug report.
  This patch avoids the issue by doing simple matching of min/max/abs
  patterns that never requires instruction flags. We give up some CSE
  power because of that, but that is not expected to result in much
  actual performance difference because InstCombine will canonicalize
  these patterns when possible. It even has this comment for abs/nabs:

    /// Canonicalize all these variants to 1 pattern.
    /// This makes CSE more likely.

  (And this patch adds PhaseOrdering tests to verify that the expected
  transforms are still happening in the standard optimization
  pipelines.

  I left this code to use ValueTracking\'s "flavor" enum values, so we
  don\'t have to change the callers\' code. If we decide to go back to
  using the ValueTracking call (by changing the hashing algorithm
  instead), it should be obvious how to replace this chunk.

  Differential Revision: https://reviews.llvm.org/D74285

This fixes an assertion when building the math/gsl port on PowerPC64.

Requested by:	pkubja
MFC after:	6 weeks
X-MFC-With:	358851
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'e39dad6', '2020-03-19', 'Dimitry Andric', 'Merge commit b8ebc11f0 from llvm git (by Sanjay Patel):', 'Merge commit b8ebc11f0 from llvm git (by Sanjay Patel):

  [EarlyCSE] avoid crashing when detecting min/max/abs patterns (PR41083)

  As discussed in PR41083:
  https://bugs.llvm.org/show_bug.cgi?id=41083
  ...we can assert/crash in EarlyCSE using the current hashing scheme
  and instructions with flags.

  ValueTracking\'s matchSelectPattern() may rely on overflow (nsw, etc)
  or other flags when detecting patterns such as min/max/abs composed
  of compare+select. But the value numbering / hashing mechanism used
  by EarlyCSE intersects those flags to allow more CSE.

  Several alternatives to solve this are discussed in the bug report.
  This patch avoids the issue by doing simple matching of min/max/abs
  patterns that never requires instruction flags. We give up some CSE
  power because of that, but that is not expected to result in much
  actual performance difference because InstCombine will canonicalize
  these patterns when possible. It even has this comment for abs/nabs:

    /// Canonicalize all these variants to 1 pattern.
    /// This makes CSE more likely.

  (And this patch adds PhaseOrdering tests to verify that the expected
  transforms are still happening in the standard optimization
  pipelines.

  I left this code to use ValueTracking\'s "flavor" enum values, so we
  don\'t have to change the callers\' code. If we decide to go back to
  using the ValueTracking call (by changing the hashing algorithm
  instead), it should be obvious how to replace this chunk.

  Differential Revision: https://reviews.llvm.org/D74285

This fixes an assertion when building the math/gsl port on PowerPC64.

Requested by:	pkubja
MFC after:	6 weeks
X-MFC-With:	358851
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '146b3c6', '2020-03-07', 'dim', 'Merge commit f75939599 from llvm git (by Erich Keane):', 'Merge commit f75939599 from llvm git (by Erich Keane):

  Reland r374450 with Richard Smith\'s comments and test fixed.

  The behavior from the original patch has changed, since we\'re no
  longer allowing LLVM to just ignore the alignment.  Instead, we\'re
  just assuming the maximum possible alignment.

  Differential Revision: https://reviews.llvm.org/D68824

  llvm-svn: 374562

This fixes \'Assertion failed: (Alignment != 0 && "Invalid Alignment"),
function CreateAlignmentAssumption\', when building recent versions of
v8, which invoke __builtin_assume_aligned() with its alignment argument
set to 4GiB or more.

Clang will now report a warning, and show the maximum possible alignment
instead, e.g.:

huge-align.cpp:1:27: warning: requested alignment must be 536870912 bytes or smaller; maximum alignment assumed [-Wbuiltin-assume-aligned-alignment]
void *f(void *g) { return __builtin_assume_aligned(g, 4294967296); }
                          ^                           ~~~~~~~~~~

Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=43839
Reported by:	cem
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'fc7efa1', '2020-03-07', 'Dimitry Andric', 'Merge commit f75939599 from llvm git (by Erich Keane):', 'Merge commit f75939599 from llvm git (by Erich Keane):

  Reland r374450 with Richard Smith\'s comments and test fixed.

  The behavior from the original patch has changed, since we\'re no
  longer allowing LLVM to just ignore the alignment.  Instead, we\'re
  just assuming the maximum possible alignment.

  Differential Revision: https://reviews.llvm.org/D68824

  llvm-svn: 374562

This fixes \'Assertion failed: (Alignment != 0 && "Invalid Alignment"),
function CreateAlignmentAssumption\', when building recent versions of
v8, which invoke __builtin_assume_aligned() with its alignment argument
set to 4GiB or more.

Clang will now report a warning, and show the maximum possible alignment
instead, e.g.:

huge-align.cpp:1:27: warning: requested alignment must be 536870912 bytes or smaller; maximum alignment assumed [-Wbuiltin-assume-aligned-alignment]
void *f(void *g) { return __builtin_assume_aligned(g, 4294967296); }
                          ^                           ~~~~~~~~~~

Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=43839
Reported by:	cem
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'aac336d', '2020-03-05', 'dim', 'Link stand/i386 components using a linker script', 'Link stand/i386 components using a linker script

LLD 10.0.0 changed the behavior of the -Ttext option, so that using
-Ttext=0x0 now causes linking of the loaders to fail with:

ld: error: output file too large: 18446744073707016908 bytes

I reported this in https://bugs.llvm.org/show_bug.cgi?id=44715, and
initially reverted the upstream change in r357259 to work around it.

However, after some discussion with Fangrui Song in the upstream ticket,
I think we can classify this as an unfortunate interaction between using
-Ttext=0 in combination with --no-rosegment.  (We added the latter
in r332090, because btxld does not correctly handle input with more
than 2 PT_LOAD segments.)

Fangrui suggested to use a linker script instead, and Warner was already
attempting this in r305353, but had to revert it due to "crypto-using
boot problems" (not sure what those were :).

This review updates the stand/i386/boot.ldscript to handle more
sections, inserts some symbols like _edata and such that we use in
libsa, and also discards any .interp section.

It uses ORG which is defined on the linker command line using
--defsym ORG=value to set the start of all the sections.

Reviewed by:	imp
MFC after:	2 weeks
Differential Revision: https://reviews.freebsd.org/D23952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'a2037db', '2020-03-05', 'Dimitry Andric', 'Link stand/i386 components using a linker script', 'Link stand/i386 components using a linker script

LLD 10.0.0 changed the behavior of the -Ttext option, so that using
-Ttext=0x0 now causes linking of the loaders to fail with:

ld: error: output file too large: 18446744073707016908 bytes

I reported this in https://bugs.llvm.org/show_bug.cgi?id=44715, and
initially reverted the upstream change in r357259 to work around it.

However, after some discussion with Fangrui Song in the upstream ticket,
I think we can classify this as an unfortunate interaction between using
-Ttext=0 in combination with --no-rosegment.  (We added the latter
in r332090, because btxld does not correctly handle input with more
than 2 PT_LOAD segments.)

Fangrui suggested to use a linker script instead, and Warner was already
attempting this in r305353, but had to revert it due to "crypto-using
boot problems" (not sure what those were :).

This review updates the stand/i386/boot.ldscript to handle more
sections, inserts some symbols like _edata and such that we use in
libsa, and also discards any .interp section.

It uses ORG which is defined on the linker command line using
--defsym ORG=value to set the start of all the sections.

Reviewed by:	imp
MFC after:	2 weeks
Differential Revision: https://reviews.freebsd.org/D23952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '2a168f0', '2020-01-02', 'Dimitry Andric', 'Merge commit 468a0cb5f from llvm git (by Craig Topper):', 'Merge commit 468a0cb5f from llvm git (by Craig Topper):

  [X86] Add X87 FCMOV support to X86FlagsCopyLowering.

  Fixes PR44396

Merge commit 86f48999f from llvm git (by Craig Topper):

  [X86] Fix typo in getCMovOpcode.

  The 64-bit HasMemoryOperand line was using CMOV32rm instead of
  CMOV64rm. Not sure how to test this. We have no test coverage that
  passes true for HasMemoryOperand.

This fixes \'Assertion failed: (MI.findRegisterDefOperand(X86::EFLAGS) &&
"Expected a def of EFLAGS for this instruction!"), function
runOnMachineFunction\' when compiling the misc/gpsim port for i386.

Reported by:	yuri
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=44396
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '4599184', '2020-01-02', 'dim', 'Merge commit 468a0cb5f from llvm git (by Craig Topper):', 'Merge commit 468a0cb5f from llvm git (by Craig Topper):

  [X86] Add X87 FCMOV support to X86FlagsCopyLowering.

  Fixes PR44396

Merge commit 86f48999f from llvm git (by Craig Topper):

  [X86] Fix typo in getCMovOpcode.

  The 64-bit HasMemoryOperand line was using CMOV32rm instead of
  CMOV64rm. Not sure how to test this. We have no test coverage that
  passes true for HasMemoryOperand.

This fixes \'Assertion failed: (MI.findRegisterDefOperand(X86::EFLAGS) &&
"Expected a def of EFLAGS for this instruction!"), function
runOnMachineFunction\' when compiling the misc/gpsim port for i386.

Reported by:	yuri
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=44396
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '88eb44d', '2019-11-29', 'Ryan Libby', 'kern.mk: -Wno-error=stringop-overflow for gcc due to false positives', 'kern.mk: -Wno-error=stringop-overflow for gcc due to false positives

Demote gcc\'s Wstringop-overflow to Wno-error due to false positives.
E.g. the riscv64 build with gcc 8.3.0 has been failing with this warning
since r355062 [1].  A bug has been filed with gcc [2].  The warning was
first introduced in gcc 7.1 [3]. Hopefully we can avoiding suppressing
the warning in future gcc versions.

[1] https://ci.freebsd.org/job/FreeBSD-head-riscv64-build/16691/
[2] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=92718
[3] https://gcc.gnu.org/wiki/WarningHistory

Reviewed by:	markj
Sponsored by:	Dell EMC Isilon
Differential Revision:	https://reviews.freebsd.org/D22603
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '867c75c', '2019-11-29', 'rlibby', 'kern.mk: -Wno-error=stringop-overflow for gcc due to false positives', 'kern.mk: -Wno-error=stringop-overflow for gcc due to false positives

Demote gcc\'s Wstringop-overflow to Wno-error due to false positives.
E.g. the riscv64 build with gcc 8.3.0 has been failing with this warning
since r355062 [1].  A bug has been filed with gcc [2].  The warning was
first introduced in gcc 7.1 [3]. Hopefully we can avoiding suppressing
the warning in future gcc versions.

[1] https://ci.freebsd.org/job/FreeBSD-head-riscv64-build/16691/
[2] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=92718
[3] https://gcc.gnu.org/wiki/WarningHistory

Reviewed by:	markj
Sponsored by:	Dell EMC Isilon
Differential Revision:	https://reviews.freebsd.org/D22603
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '8b1412a', '2019-09-24', 'Dimitry Andric', 'Pull in r372606 from upstream llvm trunk (by Sanjay Patel):', 'Pull in r372606 from upstream llvm trunk (by Sanjay Patel):

  [x86] fix assert with horizontal math + broadcast of vector (PR43402)

  https://bugs.llvm.org/show_bug.cgi?id=43402

This should fix \'Assertion failed: ((HOp.getValueType() == MVT::v2f64 ||
HOp.getValueType() == MVT::v4f64) && HOp.getValueType() == VT &&
"Unexpected type for h-op"), function foldShuffleOfHorizOp, file
contrib/llvm/lib/Target/X86/X86ISelLowering.cpp, line 33661\' when
building the devel/llvm90 port with CPUTYPE=haswell.

PR:		240759
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '3538987', '2019-09-24', 'dim', 'Pull in r372606 from upstream llvm trunk (by Sanjay Patel):', 'Pull in r372606 from upstream llvm trunk (by Sanjay Patel):

  [x86] fix assert with horizontal math + broadcast of vector (PR43402)

  https://bugs.llvm.org/show_bug.cgi?id=43402

This should fix \'Assertion failed: ((HOp.getValueType() == MVT::v2f64 ||
HOp.getValueType() == MVT::v4f64) && HOp.getValueType() == VT &&
"Unexpected type for h-op"), function foldShuffleOfHorizOp, file
contrib/llvm/lib/Target/X86/X86ISelLowering.cpp, line 33661\' when
building the devel/llvm90 port with CPUTYPE=haswell.

PR:		240759
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'ceb1981', '2019-09-14', 'Dimitry Andric', 'Revert commit from upstream llvm trunk (by Hans Wennborg):', 'Revert commit from upstream llvm trunk (by Hans Wennborg):

  Re-commit r357452 (take 3): "SimplifyCFG
  SinkCommonCodeFromPredecessors: Also sink function calls without used
  results (PR41259)"

  Third time\'s the charm.

  This was reverted in r363220 due to being suspected of an internal
  benchmark regression and a test failure, none of which turned out to
  be caused by this.

As reported in https://bugs.llvm.org/show_bug.cgi?id=43269, this causes
UNREACHABLE errors when compiling if_malo_pci.c for arm and aarch64.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '24b1a5b', '2019-09-14', 'dim', 'Revert commit from upstream llvm trunk (by Hans Wennborg):', 'Revert commit from upstream llvm trunk (by Hans Wennborg):

  Re-commit r357452 (take 3): "SimplifyCFG
  SinkCommonCodeFromPredecessors: Also sink function calls without used
  results (PR41259)"

  Third time\'s the charm.

  This was reverted in r363220 due to being suspected of an internal
  benchmark regression and a test failure, none of which turned out to
  be caused by this.

As reported in https://bugs.llvm.org/show_bug.cgi?id=43269, this causes
UNREACHABLE errors when compiling if_malo_pci.c for arm and aarch64.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '211f2e5', '2019-09-07', 'Dimitry Andric', 'Pull in r371111 from upstream llvm trunk (by Eli Friedman):', 'Pull in r371111 from upstream llvm trunk (by Eli Friedman):

  [IfConversion] Fix diamond conversion with unanalyzable branches.

  The code was incorrectly counting the number of identical
  instructions, and therefore tried to predicate an instruction which
  should not have been predicated.  This could have various effects: a
  compiler crash, an assembler failure, a miscompile, or just
  generating an extra, unnecessary instruction.

  Instead of depending on TargetInstrInfo::removeBranch, which only
  works on analyzable branches, just remove all branch instructions.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=43121 and
  https://bugs.llvm.org/show_bug.cgi?id=41121 .

  Differential Revision: https://reviews.llvm.org/D67203

This should fix "Unable to predicate BX killed renamable $r0" errors
when building the lang/spidermonkey170 and lang/spidermonkey38 ports for
armv7 and armv6.

PR:		236567
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b7e6cfc', '2019-09-07', 'dim', 'Pull in r371111 from upstream llvm trunk (by Eli Friedman):', 'Pull in r371111 from upstream llvm trunk (by Eli Friedman):

  [IfConversion] Fix diamond conversion with unanalyzable branches.

  The code was incorrectly counting the number of identical
  instructions, and therefore tried to predicate an instruction which
  should not have been predicated.  This could have various effects: a
  compiler crash, an assembler failure, a miscompile, or just
  generating an extra, unnecessary instruction.

  Instead of depending on TargetInstrInfo::removeBranch, which only
  works on analyzable branches, just remove all branch instructions.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=43121 and
  https://bugs.llvm.org/show_bug.cgi?id=41121 .

  Differential Revision: https://reviews.llvm.org/D67203

This should fix "Unable to predicate BX killed renamable $r0" errors
when building the lang/spidermonkey170 and lang/spidermonkey38 ports for
armv7 and armv6.

PR:		236567
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '24ea146', '2019-09-06', 'Dimitry Andric', '﻿Pull in r369828 from upstream lld trunk (by Fāng-ruì Sòng):', '﻿Pull in r369828 from upstream lld trunk (by Fāng-ruì Sòng):

  [ELF] Align the first section of a PT_LOAD even if its type is
  SHT_NOBITS

  Reported at https://reviews.llvm.org/D64930#1642223

  If the only section of a PT_LOAD is a SHT_NOBITS section (e.g. .bss),
  we may not align its sh_offset. p_offset of the PT_LOAD will be set
  to sh_offset, and we will get p_offset!=p_vaddr (mod p_align).  If
  such executable is mapped by the Linux kernel, it will segfault.

  After D64906, this may happen the non-linker script case.

  The linker script case has had this issue for a long time.  This was
  fixed by rL321657 (but the test linkerscript/nobits-offset.s failed
  to test a SHT_NOBITS section), but broken by rL345154.

  Reviewed By: peter.smith

  Differential Revision: https://reviews.llvm.org/D66658

Pull in r371013 from upstream lld trunk (by Rui Ueyama):

  Align output segments correctly

  Previously, segments were aligned according to their first section\'s
  alignment requirements. That was not correct, but segments are also
  aligned to a page boundary, and a page boundary is usually much
  larger than a section alignment requirement, so no one noticed this
  bug before.

  Now, lld has --nmagic option which sets maxPageSize to 1 to
  effectively disable page alignment, which reveals the issue.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=43212

  Differential Revision: https://reviews.llvm.org/D67152

Together, these should ensure gpboot.out gets a correctly aligned offset
for its .rodata section, and fix "layout constraint violation" errors
from objcopy.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '2291b00', '2019-09-06', 'dim', '﻿Pull in r369828 from upstream lld trunk (by Fāng-ruì Sòng):', '﻿Pull in r369828 from upstream lld trunk (by Fāng-ruì Sòng):

  [ELF] Align the first section of a PT_LOAD even if its type is
  SHT_NOBITS

  Reported at https://reviews.llvm.org/D64930#1642223

  If the only section of a PT_LOAD is a SHT_NOBITS section (e.g. .bss),
  we may not align its sh_offset. p_offset of the PT_LOAD will be set
  to sh_offset, and we will get p_offset!=p_vaddr (mod p_align).  If
  such executable is mapped by the Linux kernel, it will segfault.

  After D64906, this may happen the non-linker script case.

  The linker script case has had this issue for a long time.  This was
  fixed by rL321657 (but the test linkerscript/nobits-offset.s failed
  to test a SHT_NOBITS section), but broken by rL345154.

  Reviewed By: peter.smith

  Differential Revision: https://reviews.llvm.org/D66658

Pull in r371013 from upstream lld trunk (by Rui Ueyama):

  Align output segments correctly

  Previously, segments were aligned according to their first section\'s
  alignment requirements. That was not correct, but segments are also
  aligned to a page boundary, and a page boundary is usually much
  larger than a section alignment requirement, so no one noticed this
  bug before.

  Now, lld has --nmagic option which sets maxPageSize to 1 to
  effectively disable page alignment, which reveals the issue.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=43212

  Differential Revision: https://reviews.llvm.org/D67152

Together, these should ensure gpboot.out gets a correctly aligned offset
for its .rodata section, and fix "layout constraint violation" errors
from objcopy.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '4b3b82a', '2019-09-02', 'Kyle Evans', 'mips: fix some mcount nits', 'mips: fix some mcount nits

The symbol version for _mcount was removed 12 years ago in r169525 from
gmon/Symbol.map, to be added to the per-arch Symbol.map. mips was overlooked
in this, so _mcount has no symver. Add it back to where it should have been,
rather than where it would go if it were added today, since we\'re correcting
a historical mistake.

Additionally, _mcount is getting thrown into .mdebug.abi32 in the llvm80/90
world as it\'s not getting explicitly thrown into .text, so do this now. This
fixes the libc build that was previously failing due to relocations in
.mdebug.abi32. This is specifically due to the way clang\'s integrated AS
works and that they emit the .mdebug.abiNN section early in the process. An
LLVM bug has been submitted[0] and an agreement has been made that the
mips backend should switch to .text following .mdebug.abiNN for
compatibility.

[0] https://bugs.llvm.org/show_bug.cgi?id=43119

Reviewed by:	imp, arichardson
MFC after:	1 week
Differential Revision:	https://reviews.freebsd.org/D21435
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '6bddb14', '2019-09-02', 'kevans', 'mips: fix some mcount nits', 'mips: fix some mcount nits

The symbol version for _mcount was removed 12 years ago in r169525 from
gmon/Symbol.map, to be added to the per-arch Symbol.map. mips was overlooked
in this, so _mcount has no symver. Add it back to where it should have been,
rather than where it would go if it were added today, since we\'re correcting
a historical mistake.

Additionally, _mcount is getting thrown into .mdebug.abi32 in the llvm80/90
world as it\'s not getting explicitly thrown into .text, so do this now. This
fixes the libc build that was previously failing due to relocations in
.mdebug.abi32. This is specifically due to the way clang\'s integrated AS
works and that they emit the .mdebug.abiNN section early in the process. An
LLVM bug has been submitted[0] and an agreement has been made that the
mips backend should switch to .text following .mdebug.abiNN for
compatibility.

[0] https://bugs.llvm.org/show_bug.cgi?id=43119

Reviewed by:	imp, arichardson
MFC after:	1 week
Differential Revision:	https://reviews.freebsd.org/D21435
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'd80439b', '2019-07-02', 'Dimitry Andric', 'Pull in r360968 from upstream llvm trunk (by Philip Reames):', 'Pull in r360968 from upstream llvm trunk (by Philip Reames):

  Clarify comments on helpers used by LFTR [NFC]

  I\'m slowly wrapping my head around this code, and am making comment
  improvements where I can.

Pull in r360972 from upstream llvm trunk (by Philip Reames):

  [LFTR] Factor out a helper function for readability purpose [NFC]

Pull in r360976 from upstream llvm trunk (by Philip Reames):

  [IndVars] Don\'t reimplement Loop::isLoopInvariant [NFC]

  Using dominance vs a set membership check is indistinguishable from a
  compile time perspective, and the two queries return equivelent
  results.  Simplify code by using the existing function.

Pull in r360978 from upstream llvm trunk (by Philip Reames):

  [LFTR] Strengthen assertions in genLoopLimit [NFCI]

Pull in r362292 from upstream llvm trunk (by Nikita Popov):

  [IndVarSimplify] Fixup nowrap flags during LFTR (PR31181)

  Fix for https://bugs.llvm.org/show_bug.cgi?id=31181 and partial fix
  for LFTR poison handling issues in general.

  When LFTR moves a condition from pre-inc to post-inc, it may now
  depend on value that is poison due to nowrap flags. To avoid this, we
  clear any nowrap flag that SCEV cannot prove for the post-inc addrec.

  Additionally, LFTR may switch to a different IV that is dynamically
  dead and as such may be arbitrarily poison. This patch will correct
  nowrap flags in some but not all cases where this happens. This is
  related to the adoption of IR nowrap flags for the pre-inc addrec.
  (See some of the switch_to_different_iv tests, where flags are not
  dropped or insufficiently dropped.)

  Finally, there are likely similar issues with the handling of GEP
  inbounds, but we don\'t have a test case for this yet.

  Differential Revision: https://reviews.llvm.org/D60935

Pull in r362971 from upstream llvm trunk (by Philip Reames):

  Prepare for multi-exit LFTR [NFC]

  This change does the plumbing to wire an ExitingBB parameter through
  the LFTR implementation, and reorganizes the code to work in terms of
  a set of individual loop exits. Most of it is fairly obvious, but
  there\'s one key complexity which makes it worthy of consideration.
  The actual multi-exit LFTR patch is in D62625 for context.

  Specifically, it turns out the existing code uses the backedge taken
  count from before a IV is widened. Oddly, we can end up with a
  different (more expensive, but semantically equivelent) BE count for
  the loop when requerying after widening.  For the nestedIV example
  from elim-extend, we end up with the following BE counts:
  BEFORE: (-2 + (-1 * %innercount) + %limit)
  AFTER: (-1 + (sext i32 (-1 + %limit) to i64) + (-1 * (sext i32 %innercount to i64))<nsw>)

  This is the only test in tree which seems sensitive to this
  difference. The actual result of using the wider BETC on this example
  is that we actually produce slightly better code. :)

  In review, we decided to accept that test change.  This patch is
  structured to preserve the old behavior, but a separate change will
  immediate follow with the behavior change.  (I wanted it separate for
  problem attribution purposes.)

  Differential Revision: https://reviews.llvm.org/D62880

Pull in r362975 from upstream llvm trunk (by Philip Reames):

  [LFTR] Use recomputed BE count

  This was discussed as part of D62880.  The basic thought is that
  computing BE taken count after widening should produce (on average)
  an equally good backedge taken count as the one before widening.
  Since there\'s only one test in the suite which is impacted by this
  change, and it\'s essentially equivelent codegen, that seems to be a
  reasonable assertion.  This change was separated from r362971 so that
  if this turns out to be problematic, the triggering piece is obvious
  and easily revertable.

  For the nestedIV example from elim-extend.ll, we end up with the
  following BE counts:
  BEFORE: (-2 + (-1 * %innercount) + %limit)
  AFTER: (-1 + (sext i32 (-1 + %limit) to i64) + (-1 * (sext i32 %innercount to i64))<nsw>)

  Note that before is an i32 type, and the after is an i64.  Truncating
  the i64 produces the i32.

Pull in r362980 from upstream llvm trunk (by Philip Reames):

  Factor out a helper function for readability and reuse in a future
  patch [NFC]

Pull in r363613 from upstream llvm trunk (by Philip Reames):

  Fix a bug w/inbounds invalidation in LFTR (recommit)

  Recommit r363289 with a bug fix for crash identified in pr42279.
  Issue was that a loop exit test does not have to be an icmp, leading
  to a null dereference crash when new logic was exercised for that
  case.  Test case previously committed in r363601.

  Original commit comment follows:

  This contains fixes for two cases where we might invalidate inbounds
  and leave it stale in the IR (a miscompile). Case 1 is when switching
  to an IV with no dynamically live uses, and case 2 is when doing
  pre-to-post conversion on the same pointer type IV.

  The basic scheme used is to prove that using the given IV (pre or
  post increment forms) would have to already trigger UB on the path to
  the test we\'re modifying. As such, our potential UB triggering use
  does not change the semantics of the original program.

  As was pointed out in the review thread by Nikita, this is defending
  against a separate issue from the hasConcreteDef case. This is about
  poison, that\'s about undef. Unfortunately, the two are different, see
  Nikita\'s comment for a fuller explanation, he explains it well.

  (Note: I\'m going to address Nikita\'s last style comment in a separate
  commit just to minimize chance of subtle bugs being introduced due to
  typos.)

  Differential Revision: https://reviews.llvm.org/D62939

Pull in r363875 from upstream llvm trunk (by Philip Reames):

  [LFTR] Rename variable to minimize confusion [NFC]

  (Recommit of r363293 which was reverted when a dependent patch was.)

  As pointed out by Nikita in D62625, BackedgeTakenCount is generally
  used to refer to the backedge taken count of the loop. A conditional
  backedge taken count - one which only applies if a particular exit is
  taken - is called a ExitCount in SCEV code, so be consistent here.

Pull in r363877 from upstream llvm trunk (by Philip Reames):

  [LFTR] Stylistic cleanup as suggested in last review comment of
  D62939 [NFC]

  (Resumbit of r363292 which was reverted along w/an earlier patch)

Pull in r364346 from upstream llvm trunk (by Philip Reames):

  [LFTR] Adjust debug output to include extensions (if any)

Pull in r364693 from upstream llvm trunk (by Philip Reames):

  [IndVars] Remove a bit of manual constant folding [NFC]

  SCEV is more than capable of folding (add x, trunc(0)) to x.

Pull in r364709 from upstream llvm trunk (by Nikita Popov):

  [LFTR] Fix post-inc pointer IV with truncated exit count (PR41998)

  Fixes https://bugs.llvm.org/show_bug.cgi?id=41998. Usually when we
  have a truncated exit count we\'ll truncate the IV when comparing
  against the limit, in which case exit count overflow in post-inc form
  doesn\'t matter. However, for pointer IVs we don\'t do that, so we have
  to be careful about incrementing the IV in the wide type.

  I\'m fixing this by removing the IVCount variable (which was ExitCount
  or ExitCount+1) and replacing it with a UsePostInc flag, and then
  moving the actual limit adjustment to the individual cases (which
  are: pointer IV where we add to the wide type, integer IV where we
  add to the narrow type, and constant integer IV where we add to the
  wide type).

  Differential Revision: https://reviews.llvm.org/D63686

Together, these should fix a hang when building the textproc/htmldoc
port, due to an incorrect loop optimization.

PR:		237515
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'ec796a0', '2019-07-02', 'dim', 'Pull in r360968 from upstream llvm trunk (by Philip Reames):', 'Pull in r360968 from upstream llvm trunk (by Philip Reames):

  Clarify comments on helpers used by LFTR [NFC]

  I\'m slowly wrapping my head around this code, and am making comment
  improvements where I can.

Pull in r360972 from upstream llvm trunk (by Philip Reames):

  [LFTR] Factor out a helper function for readability purpose [NFC]

Pull in r360976 from upstream llvm trunk (by Philip Reames):

  [IndVars] Don\'t reimplement Loop::isLoopInvariant [NFC]

  Using dominance vs a set membership check is indistinguishable from a
  compile time perspective, and the two queries return equivelent
  results.  Simplify code by using the existing function.

Pull in r360978 from upstream llvm trunk (by Philip Reames):

  [LFTR] Strengthen assertions in genLoopLimit [NFCI]

Pull in r362292 from upstream llvm trunk (by Nikita Popov):

  [IndVarSimplify] Fixup nowrap flags during LFTR (PR31181)

  Fix for https://bugs.llvm.org/show_bug.cgi?id=31181 and partial fix
  for LFTR poison handling issues in general.

  When LFTR moves a condition from pre-inc to post-inc, it may now
  depend on value that is poison due to nowrap flags. To avoid this, we
  clear any nowrap flag that SCEV cannot prove for the post-inc addrec.

  Additionally, LFTR may switch to a different IV that is dynamically
  dead and as such may be arbitrarily poison. This patch will correct
  nowrap flags in some but not all cases where this happens. This is
  related to the adoption of IR nowrap flags for the pre-inc addrec.
  (See some of the switch_to_different_iv tests, where flags are not
  dropped or insufficiently dropped.)

  Finally, there are likely similar issues with the handling of GEP
  inbounds, but we don\'t have a test case for this yet.

  Differential Revision: https://reviews.llvm.org/D60935

Pull in r362971 from upstream llvm trunk (by Philip Reames):

  Prepare for multi-exit LFTR [NFC]

  This change does the plumbing to wire an ExitingBB parameter through
  the LFTR implementation, and reorganizes the code to work in terms of
  a set of individual loop exits. Most of it is fairly obvious, but
  there\'s one key complexity which makes it worthy of consideration.
  The actual multi-exit LFTR patch is in D62625 for context.

  Specifically, it turns out the existing code uses the backedge taken
  count from before a IV is widened. Oddly, we can end up with a
  different (more expensive, but semantically equivelent) BE count for
  the loop when requerying after widening.  For the nestedIV example
  from elim-extend, we end up with the following BE counts:
  BEFORE: (-2 + (-1 * %innercount) + %limit)
  AFTER: (-1 + (sext i32 (-1 + %limit) to i64) + (-1 * (sext i32 %innercount to i64))<nsw>)

  This is the only test in tree which seems sensitive to this
  difference. The actual result of using the wider BETC on this example
  is that we actually produce slightly better code. :)

  In review, we decided to accept that test change.  This patch is
  structured to preserve the old behavior, but a separate change will
  immediate follow with the behavior change.  (I wanted it separate for
  problem attribution purposes.)

  Differential Revision: https://reviews.llvm.org/D62880

Pull in r362975 from upstream llvm trunk (by Philip Reames):

  [LFTR] Use recomputed BE count

  This was discussed as part of D62880.  The basic thought is that
  computing BE taken count after widening should produce (on average)
  an equally good backedge taken count as the one before widening.
  Since there\'s only one test in the suite which is impacted by this
  change, and it\'s essentially equivelent codegen, that seems to be a
  reasonable assertion.  This change was separated from r362971 so that
  if this turns out to be problematic, the triggering piece is obvious
  and easily revertable.

  For the nestedIV example from elim-extend.ll, we end up with the
  following BE counts:
  BEFORE: (-2 + (-1 * %innercount) + %limit)
  AFTER: (-1 + (sext i32 (-1 + %limit) to i64) + (-1 * (sext i32 %innercount to i64))<nsw>)

  Note that before is an i32 type, and the after is an i64.  Truncating
  the i64 produces the i32.

Pull in r362980 from upstream llvm trunk (by Philip Reames):

  Factor out a helper function for readability and reuse in a future
  patch [NFC]

Pull in r363613 from upstream llvm trunk (by Philip Reames):

  Fix a bug w/inbounds invalidation in LFTR (recommit)

  Recommit r363289 with a bug fix for crash identified in pr42279.
  Issue was that a loop exit test does not have to be an icmp, leading
  to a null dereference crash when new logic was exercised for that
  case.  Test case previously committed in r363601.

  Original commit comment follows:

  This contains fixes for two cases where we might invalidate inbounds
  and leave it stale in the IR (a miscompile). Case 1 is when switching
  to an IV with no dynamically live uses, and case 2 is when doing
  pre-to-post conversion on the same pointer type IV.

  The basic scheme used is to prove that using the given IV (pre or
  post increment forms) would have to already trigger UB on the path to
  the test we\'re modifying. As such, our potential UB triggering use
  does not change the semantics of the original program.

  As was pointed out in the review thread by Nikita, this is defending
  against a separate issue from the hasConcreteDef case. This is about
  poison, that\'s about undef. Unfortunately, the two are different, see
  Nikita\'s comment for a fuller explanation, he explains it well.

  (Note: I\'m going to address Nikita\'s last style comment in a separate
  commit just to minimize chance of subtle bugs being introduced due to
  typos.)

  Differential Revision: https://reviews.llvm.org/D62939

Pull in r363875 from upstream llvm trunk (by Philip Reames):

  [LFTR] Rename variable to minimize confusion [NFC]

  (Recommit of r363293 which was reverted when a dependent patch was.)

  As pointed out by Nikita in D62625, BackedgeTakenCount is generally
  used to refer to the backedge taken count of the loop. A conditional
  backedge taken count - one which only applies if a particular exit is
  taken - is called a ExitCount in SCEV code, so be consistent here.

Pull in r363877 from upstream llvm trunk (by Philip Reames):

  [LFTR] Stylistic cleanup as suggested in last review comment of
  D62939 [NFC]

  (Resumbit of r363292 which was reverted along w/an earlier patch)

Pull in r364346 from upstream llvm trunk (by Philip Reames):

  [LFTR] Adjust debug output to include extensions (if any)

Pull in r364693 from upstream llvm trunk (by Philip Reames):

  [IndVars] Remove a bit of manual constant folding [NFC]

  SCEV is more than capable of folding (add x, trunc(0)) to x.

Pull in r364709 from upstream llvm trunk (by Nikita Popov):

  [LFTR] Fix post-inc pointer IV with truncated exit count (PR41998)

  Fixes https://bugs.llvm.org/show_bug.cgi?id=41998. Usually when we
  have a truncated exit count we\'ll truncate the IV when comparing
  against the limit, in which case exit count overflow in post-inc form
  doesn\'t matter. However, for pointer IVs we don\'t do that, so we have
  to be careful about incrementing the IV in the wide type.

  I\'m fixing this by removing the IVCount variable (which was ExitCount
  or ExitCount+1) and replacing it with a UsePostInc flag, and then
  moving the actual limit adjustment to the individual cases (which
  are: pointer IV where we add to the wide type, integer IV where we
  add to the narrow type, and constant integer IV where we add to the
  wide type).

  Differential Revision: https://reviews.llvm.org/D63686

Together, these should fix a hang when building the textproc/htmldoc
port, due to an incorrect loop optimization.

PR:		237515
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '0b30b98', '2019-05-26', 'Dimitry Andric', 'Pull in r361696 from upstream llvm trunk (by Sanjay Patel):', 'Pull in r361696 from upstream llvm trunk (by Sanjay Patel):

  [SelectionDAG] soften assertion when legalizing narrow vector FP ops

  The test based on PR42010:
  https://bugs.llvm.org/show_bug.cgi?id=42010

  ...may show an inaccuracy for PPC\'s target defs, but we should not be
  so aggressive with an assert here. There\'s no telling what
  out-of-tree targets look like.

This fixes an assertion when building the graphics/mesa-dri port for
PowerPC64.

Reported by:	Mark Millard <marklmi26-fbsd@yahoo.com>
PR:		238082
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b9ba849', '2019-05-26', 'dim', 'Pull in r361696 from upstream llvm trunk (by Sanjay Patel):', 'Pull in r361696 from upstream llvm trunk (by Sanjay Patel):

  [SelectionDAG] soften assertion when legalizing narrow vector FP ops

  The test based on PR42010:
  https://bugs.llvm.org/show_bug.cgi?id=42010

  ...may show an inaccuracy for PPC\'s target defs, but we should not be
  so aggressive with an assert here. There\'s no telling what
  out-of-tree targets look like.

This fixes an assertion when building the graphics/mesa-dri port for
PowerPC64.

Reported by:	Mark Millard <marklmi26-fbsd@yahoo.com>
PR:		238082
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '6889af8', '2019-05-08', 'Dimitry Andric', 'Pull in r360099 from upstream llvm trunk (by Eli Friedman):', 'Pull in r360099 from upstream llvm trunk (by Eli Friedman):

  [ARM] Glue register copies to tail calls.

  This generally follows what other targets do. I don\'t completely
  understand why the special case for tail calls existed in the first
  place; even when the code was committed in r105413, call lowering
  didn\'t work in the way described in the comments.

  Stack protector lowering breaks if the register copies are not glued
  to a tail call: we have to insert the stack protector check before
  the tail call, and we choose the location based on the assumption
  that all physical register dependencies of a tail call are adjacent
  to the tail call. (See FindSplitPointForStackProtector.) This is sort
  of fragile, but I don\'t see any reason to break that assumption.

  I\'m guessing nobody has seen this before just because it\'s hard to
  convince the scheduler to actually schedule the code in a way that
  breaks; even without the glue, the only computation that could
  actually be scheduled after the register copies is the computation of
  the call address, and the scheduler usually prefers to schedule that
  before the copies anyway.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=41417

  Differential Revision: https://reviews.llvm.org/D60427

This should fix several instances of "Bad machine code: Using an
undefined physical register", when compiling ports such as
multimedia/vlc, audio/alsa-lib and devel/avro-c for armv6, with
-fstack-protector-strong.

Reported by:	jbeich
PR:		237074, 237783, 237784
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '5446f43', '2019-05-08', 'dim', 'Pull in r360099 from upstream llvm trunk (by Eli Friedman):', 'Pull in r360099 from upstream llvm trunk (by Eli Friedman):

  [ARM] Glue register copies to tail calls.

  This generally follows what other targets do. I don\'t completely
  understand why the special case for tail calls existed in the first
  place; even when the code was committed in r105413, call lowering
  didn\'t work in the way described in the comments.

  Stack protector lowering breaks if the register copies are not glued
  to a tail call: we have to insert the stack protector check before
  the tail call, and we choose the location based on the assumption
  that all physical register dependencies of a tail call are adjacent
  to the tail call. (See FindSplitPointForStackProtector.) This is sort
  of fragile, but I don\'t see any reason to break that assumption.

  I\'m guessing nobody has seen this before just because it\'s hard to
  convince the scheduler to actually schedule the code in a way that
  breaks; even without the glue, the only computation that could
  actually be scheduled after the register copies is the computation of
  the call address, and the scheduler usually prefers to schedule that
  before the copies anyway.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=41417

  Differential Revision: https://reviews.llvm.org/D60427

This should fix several instances of "Bad machine code: Using an
undefined physical register", when compiling ports such as
multimedia/vlc, audio/alsa-lib and devel/avro-c for armv6, with
-fstack-protector-strong.

Reported by:	jbeich
PR:		237074, 237783, 237784
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '94e9dcf', '2019-03-23', 'Dimitry Andric', 'Pull in r356809 from upstream llvm trunk (by Eli Friedman):', 'Pull in r356809 from upstream llvm trunk (by Eli Friedman):

  [ARM] Don\'t form "ands" when it isn\'t scheduled correctly.

  In r322972/r323136, the iteration here was changed to catch cases at
  the beginning of a basic block... but we accidentally deleted an
  important safety check.  Restore that check to the way it was.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=41116

  Differential Revision: https://reviews.llvm.org/D59680

This should fix "Assertion failed: (LiveCPSR && "CPSR liveness tracking
is wrong!"), function UpdateCPSRUse" errors when building the devel/xwpe
port for armv7.

PR:		236062, 236568
MFC after:	1 month
X-MFC-With:	r344779
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '91e6811', '2019-03-23', 'dim', 'Pull in r356809 from upstream llvm trunk (by Eli Friedman):', 'Pull in r356809 from upstream llvm trunk (by Eli Friedman):

  [ARM] Don\'t form "ands" when it isn\'t scheduled correctly.

  In r322972/r323136, the iteration here was changed to catch cases at
  the beginning of a basic block... but we accidentally deleted an
  important safety check.  Restore that check to the way it was.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=41116

  Differential Revision: https://reviews.llvm.org/D59680

This should fix "Assertion failed: (LiveCPSR && "CPSR liveness tracking
is wrong!"), function UpdateCPSRUse" errors when building the devel/xwpe
port for armv7.

PR:		236062, 236568
MFC after:	1 month
X-MFC-With:	r344779
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'e6ec44c', '2019-03-12', 'Dimitry Andric', 'Pull in r355854 from upstream llvm trunk (by Jonas Paulsson):', 'Pull in r355854 from upstream llvm trunk (by Jonas Paulsson):

  [RegAlloc]  Avoid compile time regression with multiple copy hints.

  As a fix for https://bugs.llvm.org/show_bug.cgi?id=40986 ("excessive
  compile time building opencollada"), this patch makes sure that no
  phys reg is hinted more than once from getRegAllocationHints().

  This handles the case were many virtual registers are assigned to the
  same physreg. The previous compile time fix (r343686) in
  weightCalcHelper() only made sure that physical/virtual registers are
  passed no more than once to addRegAllocationHint().

  Review: Dimitry Andric, Quentin Colombet
  https://reviews.llvm.org/D59201

This should fix a hang when compiling certain generated .cpp files in
the graphics/opencollada port.

PR:		236313
MFC after:	1 month
X-MFC-With:	r344779
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'd64d00c', '2019-03-12', 'dim', 'Pull in r355854 from upstream llvm trunk (by Jonas Paulsson):', 'Pull in r355854 from upstream llvm trunk (by Jonas Paulsson):

  [RegAlloc]  Avoid compile time regression with multiple copy hints.

  As a fix for https://bugs.llvm.org/show_bug.cgi?id=40986 ("excessive
  compile time building opencollada"), this patch makes sure that no
  phys reg is hinted more than once from getRegAllocationHints().

  This handles the case were many virtual registers are assigned to the
  same physreg. The previous compile time fix (r343686) in
  weightCalcHelper() only made sure that physical/virtual registers are
  passed no more than once to addRegAllocationHint().

  Review: Dimitry Andric, Quentin Colombet
  https://reviews.llvm.org/D59201

This should fix a hang when compiling certain generated .cpp files in
the graphics/opencollada port.

PR:		236313
MFC after:	1 month
X-MFC-With:	r344779
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '381ab04', '2019-02-14', 'Dimitry Andric', 'Pull in r353907 from upstream llvm trunk (by Reid Kleckner):', 'Pull in r353907 from upstream llvm trunk (by Reid Kleckner):

  [MC] Make symbol version errors non-fatal

  We stil don\'t have a source location, which is pretty lame, but at
  least we won\'t tell the user to file a clang bug report anymore.

  Fixes PR40712

This will make errors for symbols with @@ versions that are not defined
non-fatal.  For example:

  void f(void)
  {
    __asm__(".symver foo,bar@@baz");
  }

will now result in:

  error: versioned symbol bar@@baz must be defined

instead of clang crashing with a diagnostic report.

PR:		234671
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=40712
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '844d2d3', '2019-02-14', 'dim', 'Pull in r353907 from upstream llvm trunk (by Reid Kleckner):', 'Pull in r353907 from upstream llvm trunk (by Reid Kleckner):

  [MC] Make symbol version errors non-fatal

  We stil don\'t have a source location, which is pretty lame, but at
  least we won\'t tell the user to file a clang bug report anymore.

  Fixes PR40712

This will make errors for symbols with @@ versions that are not defined
non-fatal.  For example:

  void f(void)
  {
    __asm__(".symver foo,bar@@baz");
  }

will now result in:

  error: versioned symbol bar@@baz must be defined

instead of clang crashing with a diagnostic report.

PR:		234671
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=40712
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '54553da', '2019-02-13', 'Dimitry Andric', 'Pull in r339734 from upstream llvm trunk (by Eli Friedman):', 'Pull in r339734 from upstream llvm trunk (by Eli Friedman):

  [ARM] Make PerformSHLSimplify add nodes to the DAG worklist correctly.

  Intentionally excluding nodes from the DAGCombine worklist is likely
  to lead to weird optimizations and infinite loops, so it\'s generally
  a bad idea.

  To avoid the infinite loops, fix DAGCombine to use the
  isDesirableToCommuteWithShift target hook before performing the
  transforms in question, and implement the target hook in the ARM
  backend disable the transforms in question.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=38530 . (I don\'t have a
  reduced testcase for that bug. But we should have sufficient test
  coverage for PerformSHLSimplify given that we\'re not playing weird
  tricks with the worklist. I can try to bugpoint it if necessary,
  though.)

  Differential Revision: https://reviews.llvm.org/D50667

This should fix a possible hang when compiling sys/dev/nxge/if_nxge.c
(which exists now only in the stable/11 branch) for arm.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'cd43497', '2019-02-13', 'dim', 'Pull in r339734 from upstream llvm trunk (by Eli Friedman):', 'Pull in r339734 from upstream llvm trunk (by Eli Friedman):

  [ARM] Make PerformSHLSimplify add nodes to the DAG worklist correctly.

  Intentionally excluding nodes from the DAGCombine worklist is likely
  to lead to weird optimizations and infinite loops, so it\'s generally
  a bad idea.

  To avoid the infinite loops, fix DAGCombine to use the
  isDesirableToCommuteWithShift target hook before performing the
  transforms in question, and implement the target hook in the ARM
  backend disable the transforms in question.

  Fixes https://bugs.llvm.org/show_bug.cgi?id=38530 . (I don\'t have a
  reduced testcase for that bug. But we should have sufficient test
  coverage for PerformSHLSimplify given that we\'re not playing weird
  tricks with the worklist. I can try to bugpoint it if necessary,
  though.)

  Differential Revision: https://reviews.llvm.org/D50667

This should fix a possible hang when compiling sys/dev/nxge/if_nxge.c
(which exists now only in the stable/11 branch) for arm.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'c232a6c', '2019-02-10', 'Dimitry Andric', 'Pull in r352607 from upstream llvm trunk (by Craig Topper):', 'Pull in r352607 from upstream llvm trunk (by Craig Topper):

  [X86] Add FPSW as a Def on some FP instructions that were missing it.

Pull in r352608 from upstream llvm trunk (by Craig Topper):

  [X86] Remove a couple places where we unnecessarily pass 0 to the
  EmitPriority of some FP instruction aliases. NFC

  As far as I can tell we already won\'t emit these aliases due to an
  operand count check in the tablegen code. Removing these because I
  couldn\'t make sense of the inconsistency between fadd and fmul from
  reading the code.

  I checked the AsmMatcher and AsmWriter files before and after this
  change and there were no differences.

Pull in r353015 from upstream llvm trunk (by Craig Topper):

  [X86] Print %st(0) as %st when its implicit to the instruction.
  Continue printing it as %st(0) when its encoded in the instruction.

  This is a step back from the change I made in r352985. This appears
  to be more consistent with gcc and objdump behavior.

Pull in r353061 from upstream llvm trunk (by Craig Topper):

  [X86] Print all register forms of x87 fadd/fsub/fdiv/fmul as having
  two arguments where on is %st.

  All of these instructions consume one encoded register and the other
  register is %st. They either write the result to %st or the encoded
  register. Previously we printed both arguments when the encoded
  register was written. And we printed one argument when the result was
  written to %st. For the stack popping forms the encoded register is
  always the destination and we didn\'t print both operands. This was
  inconsistent with gcc and objdump and just makes the output assembly
  code harder to read.

  This patch changes things to always print both operands making us
  consistent with gcc and objdump. The parser should still be able to
  handle the single register forms just as it did before. This also
  matches the GNU assembler behavior.

Pull in r353141 from upstream llvm trunk (by Craig Topper):

  [X86] Connect the default fpsr and dirflag clobbers in inline
  assembly to the registers we have defined for them.

  Summary:
  We don\'t currently map these constraints to physical register numbers
  so they don\'t make it to the MachineIR representation of inline
  assembly.

  This could have problems for proper dependency tracking in the
  machine schedulers though I don\'t have a test case that shows that.

  Reviewers: rnk

  Reviewed By: rnk

  Subscribers: eraman, llvm-commits

  Tags: #llvm

  Differential Revision: https://reviews.llvm.org/D57641

Pull in r353489 from upstream llvm trunk (by Craig Topper):

  [X86] Add FPCW as a register and start using it as an implicit use on
  floating point instructions.

  Summary:
  FPCW contains the rounding mode control which we manipulate to
  implement fp to integer conversion by changing the roudning mode,
  storing the value to the stack, and then changing the rounding mode
  back. Because we didn\'t model FPCW and its dependency chain, other
  instructions could be scheduled into the middle of the sequence.

  This patch introduces the register and adds it as an implciit def of
  FLDCW and implicit use of the FP binary arithmetic instructions and
  store instructions. There are more instructions that need to be
  updated, but this is a good start. I believe this fixes at least the
  reduced test case from PR40529.

  Reviewers: RKSimon, spatel, rnk, efriedma, andrew.w.kaylor

  Subscribers: dim, llvm-commits

  Tags: #llvm

  Differential Revision: https://reviews.llvm.org/D57735

These should fix a problem in clang 7.0 where it would sometimes emit
long double floating point instructions in a slightly wrong order,
leading to failures in our libm tests.  In particular, the cbrt_test
test case \'cbrtl_powl\' and the trig_test test case \'reduction\'.

Reported by:	lwhsu
PR:		234040
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=40206
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b11436d', '2019-02-10', 'dim', 'Pull in r352607 from upstream llvm trunk (by Craig Topper):', 'Pull in r352607 from upstream llvm trunk (by Craig Topper):

  [X86] Add FPSW as a Def on some FP instructions that were missing it.

Pull in r352608 from upstream llvm trunk (by Craig Topper):

  [X86] Remove a couple places where we unnecessarily pass 0 to the
  EmitPriority of some FP instruction aliases. NFC

  As far as I can tell we already won\'t emit these aliases due to an
  operand count check in the tablegen code. Removing these because I
  couldn\'t make sense of the inconsistency between fadd and fmul from
  reading the code.

  I checked the AsmMatcher and AsmWriter files before and after this
  change and there were no differences.

Pull in r353015 from upstream llvm trunk (by Craig Topper):

  [X86] Print %st(0) as %st when its implicit to the instruction.
  Continue printing it as %st(0) when its encoded in the instruction.

  This is a step back from the change I made in r352985. This appears
  to be more consistent with gcc and objdump behavior.

Pull in r353061 from upstream llvm trunk (by Craig Topper):

  [X86] Print all register forms of x87 fadd/fsub/fdiv/fmul as having
  two arguments where on is %st.

  All of these instructions consume one encoded register and the other
  register is %st. They either write the result to %st or the encoded
  register. Previously we printed both arguments when the encoded
  register was written. And we printed one argument when the result was
  written to %st. For the stack popping forms the encoded register is
  always the destination and we didn\'t print both operands. This was
  inconsistent with gcc and objdump and just makes the output assembly
  code harder to read.

  This patch changes things to always print both operands making us
  consistent with gcc and objdump. The parser should still be able to
  handle the single register forms just as it did before. This also
  matches the GNU assembler behavior.

Pull in r353141 from upstream llvm trunk (by Craig Topper):

  [X86] Connect the default fpsr and dirflag clobbers in inline
  assembly to the registers we have defined for them.

  Summary:
  We don\'t currently map these constraints to physical register numbers
  so they don\'t make it to the MachineIR representation of inline
  assembly.

  This could have problems for proper dependency tracking in the
  machine schedulers though I don\'t have a test case that shows that.

  Reviewers: rnk

  Reviewed By: rnk

  Subscribers: eraman, llvm-commits

  Tags: #llvm

  Differential Revision: https://reviews.llvm.org/D57641

Pull in r353489 from upstream llvm trunk (by Craig Topper):

  [X86] Add FPCW as a register and start using it as an implicit use on
  floating point instructions.

  Summary:
  FPCW contains the rounding mode control which we manipulate to
  implement fp to integer conversion by changing the roudning mode,
  storing the value to the stack, and then changing the rounding mode
  back. Because we didn\'t model FPCW and its dependency chain, other
  instructions could be scheduled into the middle of the sequence.

  This patch introduces the register and adds it as an implciit def of
  FLDCW and implicit use of the FP binary arithmetic instructions and
  store instructions. There are more instructions that need to be
  updated, but this is a good start. I believe this fixes at least the
  reduced test case from PR40529.

  Reviewers: RKSimon, spatel, rnk, efriedma, andrew.w.kaylor

  Subscribers: dim, llvm-commits

  Tags: #llvm

  Differential Revision: https://reviews.llvm.org/D57735

These should fix a problem in clang 7.0 where it would sometimes emit
long double floating point instructions in a slightly wrong order,
leading to failures in our libm tests.  In particular, the cbrt_test
test case \'cbrtl_powl\' and the trig_test test case \'reduction\'.

Reported by:	lwhsu
PR:		234040
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=40206
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'bc8fc00', '2019-02-09', 'Dimitry Andric', 'Amend r343442, by only expecting the lib.msun.cbrt_test.cbrtl_powl and trig_test.reduction test cases to fail, if the fixes from r343916 have not yet been applied to the base compiler.', 'Amend r343442, by only expecting the lib.msun.cbrt_test.cbrtl_powl and
trig_test.reduction test cases to fail, if the fixes from r343916 have
not yet been applied to the base compiler.

Reported by:    lwhsu
PR:		234040
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=40206
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '8eb3289', '2019-02-09', 'dim', 'Amend r343442, by only expecting the lib.msun.cbrt_test.cbrtl_powl and trig_test.reduction test cases to fail, if the fixes from r343916 have not yet been applied to the base compiler.', 'Amend r343442, by only expecting the lib.msun.cbrt_test.cbrtl_powl and
trig_test.reduction test cases to fail, if the fixes from r343916 have
not yet been applied to the base compiler.

Reported by:    lwhsu
PR:		234040
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=40206
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '94ba333', '2019-02-09', 'Dimitry Andric', 'Pull in r352607 from upstream llvm trunk (by Craig Topper):', 'Pull in r352607 from upstream llvm trunk (by Craig Topper):

  [X86] Add FPSW as a Def on some FP instructions that were missing it.

Pull in r353141 from upstream llvm trunk (by Craig Topper):

  [X86] Connect the default fpsr and dirflag clobbers in inline
  assembly to the registers we have defined for them.

  Summary:
  We don\'t currently map these constraints to physical register numbers
  so they don\'t make it to the MachineIR representation of inline
  assembly.

  This could have problems for proper dependency tracking in the
  machine schedulers though I don\'t have a test case that shows that.

  Reviewers: rnk

  Reviewed By: rnk

  Subscribers: eraman, llvm-commits

  Tags: #llvm

  Differential Revision: https://reviews.llvm.org/D57641

Pull in r353489 from upstream llvm trunk (by Craig Topper):

  [X86] Add FPCW as a register and start using it as an implicit use on
  floating point instructions.

  Summary:
  FPCW contains the rounding mode control which we manipulate to
  implement fp to integer conversion by changing the roudning mode,
  storing the value to the stack, and then changing the rounding mode
  back. Because we didn\'t model FPCW and its dependency chain, other
  instructions could be scheduled into the middle of the sequence.

  This patch introduces the register and adds it as an implciit def of
  FLDCW and implicit use of the FP binary arithmetic instructions and
  store instructions. There are more instructions that need to be
  updated, but this is a good start. I believe this fixes at least the
  reduced test case from PR40529.

  Reviewers: RKSimon, spatel, rnk, efriedma, andrew.w.kaylor

  Subscribers: dim, llvm-commits

  Tags: #llvm

  Differential Revision: https://reviews.llvm.org/D57735

These should fix a problem in clang 7.0 where it would sometimes emit
long double floating point instructions in a slightly wrong order,
leading to failures in our libm tests.  In particular, the cbrt_test
test case \'cbrtl_powl\' and the trig_test test case \'reduction\'.

Also bump __FreeBSD_cc_version, to be able to detect this in our test
suite.

Reported by:    lwhsu
PR:		234040
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=40206
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '3a3bb53', '2019-02-09', 'dim', 'Pull in r352607 from upstream llvm trunk (by Craig Topper):', 'Pull in r352607 from upstream llvm trunk (by Craig Topper):

  [X86] Add FPSW as a Def on some FP instructions that were missing it.

Pull in r353141 from upstream llvm trunk (by Craig Topper):

  [X86] Connect the default fpsr and dirflag clobbers in inline
  assembly to the registers we have defined for them.

  Summary:
  We don\'t currently map these constraints to physical register numbers
  so they don\'t make it to the MachineIR representation of inline
  assembly.

  This could have problems for proper dependency tracking in the
  machine schedulers though I don\'t have a test case that shows that.

  Reviewers: rnk

  Reviewed By: rnk

  Subscribers: eraman, llvm-commits

  Tags: #llvm

  Differential Revision: https://reviews.llvm.org/D57641

Pull in r353489 from upstream llvm trunk (by Craig Topper):

  [X86] Add FPCW as a register and start using it as an implicit use on
  floating point instructions.

  Summary:
  FPCW contains the rounding mode control which we manipulate to
  implement fp to integer conversion by changing the roudning mode,
  storing the value to the stack, and then changing the rounding mode
  back. Because we didn\'t model FPCW and its dependency chain, other
  instructions could be scheduled into the middle of the sequence.

  This patch introduces the register and adds it as an implciit def of
  FLDCW and implicit use of the FP binary arithmetic instructions and
  store instructions. There are more instructions that need to be
  updated, but this is a good start. I believe this fixes at least the
  reduced test case from PR40529.

  Reviewers: RKSimon, spatel, rnk, efriedma, andrew.w.kaylor

  Subscribers: dim, llvm-commits

  Tags: #llvm

  Differential Revision: https://reviews.llvm.org/D57735

These should fix a problem in clang 7.0 where it would sometimes emit
long double floating point instructions in a slightly wrong order,
leading to failures in our libm tests.  In particular, the cbrt_test
test case \'cbrtl_powl\' and the trig_test test case \'reduction\'.

Also bump __FreeBSD_cc_version, to be able to detect this in our test
suite.

Reported by:    lwhsu
PR:		234040
Upstream PR:	https://bugs.llvm.org/show_bug.cgi?id=40206
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b371a9f', '2018-10-11', 'Ed Maste', 'lld: set sh_link and sh_info for .rela.plt sections', 'lld: set sh_link and sh_info for .rela.plt sections

ELF spec says that for SHT_REL and SHT_RELA sh_link should reference the
associated string table and sh_info should reference the "section to
which the relocation applies."  ELF Tool Chain\'s elfcopy / strip use
this (in part) to control whether or not the relocation entry is copied
to the output.

LLVM PR 37538 https://bugs.llvm.org/show_bug.cgi?id=37538

Approved by:	re (kib)
Obtained from:	llvm r344226 (backported for 6.0)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '22612b4', '2018-10-11', 'emaste', 'lld: set sh_link and sh_info for .rela.plt sections', 'lld: set sh_link and sh_info for .rela.plt sections

ELF spec says that for SHT_REL and SHT_RELA sh_link should reference the
associated string table and sh_info should reference the "section to
which the relocation applies."  ELF Tool Chain\'s elfcopy / strip use
this (in part) to control whether or not the relocation entry is copied
to the output.

LLVM PR 37538 https://bugs.llvm.org/show_bug.cgi?id=37538

Approved by:	re (kib)
Obtained from:	llvm r344226 (backported for 6.0)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'f545058', '2018-09-16', 'Dimitry Andric', 'Pull in r325478 from upstream clang trunk (by Ivan A. Kosarev):', 'Pull in r325478 from upstream clang trunk (by Ivan A. Kosarev):

  [CodeGen] Initialize large arrays by copying from a global

  Currently, clang compiles explicit initializers for array elements
  into series of store instructions. For large arrays of built-in types
  this results in bloated output code and significant amount of time
  spent on the instruction selection phase. This patch fixes the issue
  by initializing such arrays with global constants that store the
  binary image of the initializer.

  Differential Revision: https://reviews.llvm.org/D43181

This should fix a compiler hang (and excessive memory usage) while
building the science/rmg port.

Approved by:	re (kib)
Reported by:	yuri@tsoft.com
See also:	https://bugs.llvm.org/show_bug.cgi?id=38798
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '2430a7e', '2018-09-16', 'dim', 'Pull in r325478 from upstream clang trunk (by Ivan A. Kosarev):', 'Pull in r325478 from upstream clang trunk (by Ivan A. Kosarev):

  [CodeGen] Initialize large arrays by copying from a global

  Currently, clang compiles explicit initializers for array elements
  into series of store instructions. For large arrays of built-in types
  this results in bloated output code and significant amount of time
  spent on the instruction selection phase. This patch fixes the issue
  by initializing such arrays with global constants that store the
  binary image of the initializer.

  Differential Revision: https://reviews.llvm.org/D43181

This should fix a compiler hang (and excessive memory usage) while
building the science/rmg port.

Approved by:	re (kib)
Reported by:	yuri@tsoft.com
See also:	https://bugs.llvm.org/show_bug.cgi?id=38798
MFC after:	3 days
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'af5b964', '2018-08-18', 'Dimitry Andric', 'For now, revert upstream clang r323281 (by Wei Mi):', 'For now, revert upstream clang r323281 (by Wei Mi):

  Adjust MaxAtomicInlineWidth for i386/i486 targets.

  This is to fix the bug reported in
  https://bugs.llvm.org/show_bug.cgi?id=34347#c6.  Currently, all
  MaxAtomicInlineWidth of x86-32 targets are set to 64.  However, i386
  doesn\'t support any cmpxchg related instructions. i486 only supports
  cmpxchg.  So in this patch MaxAtomicInlineWidth is reset as follows:
  For i386, the MaxAtomicInlineWidth should be 0 because no cmpxchg is
  supported.  For i486, the MaxAtomicInlineWidth should be 32 because
  it supports cmpxchg.  For others 32 bits x86 cpu, the
  MaxAtomicInlineWidth should be 64 because of cmpxchg8b.

  Differential Revision: https://reviews.llvm.org/D42154

This should fix buildworld on i386, because of our system libraries
missing __atomic_load_8, and possibly other 64 bit atomic functions, for
that architecture.

We should really fix that at some point, but since we have been actually
using cmpxchg8b for years now, it does not seem to matter much...
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'ef28bd8', '2018-08-18', 'dim', 'For now, revert upstream clang r323281 (by Wei Mi):', 'For now, revert upstream clang r323281 (by Wei Mi):

  Adjust MaxAtomicInlineWidth for i386/i486 targets.

  This is to fix the bug reported in
  https://bugs.llvm.org/show_bug.cgi?id=34347#c6.  Currently, all
  MaxAtomicInlineWidth of x86-32 targets are set to 64.  However, i386
  doesn\'t support any cmpxchg related instructions. i486 only supports
  cmpxchg.  So in this patch MaxAtomicInlineWidth is reset as follows:
  For i386, the MaxAtomicInlineWidth should be 0 because no cmpxchg is
  supported.  For i486, the MaxAtomicInlineWidth should be 32 because
  it supports cmpxchg.  For others 32 bits x86 cpu, the
  MaxAtomicInlineWidth should be 64 because of cmpxchg8b.

  Differential Revision: https://reviews.llvm.org/D42154

This should fix buildworld on i386, because of our system libraries
missing __atomic_load_8, and possibly other 64 bit atomic functions, for
that architecture.

We should really fix that at some point, but since we have been actually
using cmpxchg8b for years now, it does not seem to matter much...
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'a0e8aab', '2018-06-11', 'Dimitry Andric', 'Fix build of i915kms with base gcc', 'Fix build of i915kms with base gcc

Base gcc fails to compile sys/dev/drm2/i915/intel_display.c for i386,
with the following -Werror warnings:

cc1: warnings being treated as errors
/usr/src/sys/dev/drm2/i915/intel_display.c:8884: warning:
initialization from incompatible pointer type

This is due to https://gcc.gnu.org/bugzilla/show_bug.cgi?id=36432, which
incorrectly interprets the [] as a flexible array member.

Because base gcc does not have a -W flag to suppress this particular
warning, it requires a rather ugly cast.  To not influence any other
compiler, put it in a #if/#endif block.

Reviewed by:	kib
MFC after:	3 days
Differential Revision: https://reviews.freebsd.org/D15744
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '4b1911f', '2018-06-11', 'dim', 'Fix build of i915kms with base gcc', 'Fix build of i915kms with base gcc

Base gcc fails to compile sys/dev/drm2/i915/intel_display.c for i386,
with the following -Werror warnings:

cc1: warnings being treated as errors
/usr/src/sys/dev/drm2/i915/intel_display.c:8884: warning:
initialization from incompatible pointer type

This is due to https://gcc.gnu.org/bugzilla/show_bug.cgi?id=36432, which
incorrectly interprets the [] as a flexible array member.

Because base gcc does not have a -W flag to suppress this particular
warning, it requires a rather ugly cast.  To not influence any other
compiler, put it in a #if/#endif block.

Reviewed by:	kib
MFC after:	3 days
Differential Revision: https://reviews.freebsd.org/D15744
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '6609261', '2018-06-11', 'Konstantin Belousov', 'libc qsort(3): stop aliasing.', 'libc qsort(3): stop aliasing.

Qsort swap code aliases the sorted array elements to ints and longs in
order to do swap by machine words.  Unfortunately this breaks with the
full code optimization, e.g. LTO.

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83201 which seems to
reference code directly copied from libc/stdlib/qsort.c.

PR:	228780
Reported by:	mliska@suse.cz
Reviewed by:	brooks
Sponsored by:	The FreeBSD Foundation
MFC after:	2 weeks
Differential revision:	https://reviews.freebsd.org/D15714
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '26c8a03', '2018-06-11', 'kib', 'libc qsort(3): stop aliasing.', 'libc qsort(3): stop aliasing.

Qsort swap code aliases the sorted array elements to ints and longs in
order to do swap by machine words.  Unfortunately this breaks with the
full code optimization, e.g. LTO.

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83201 which seems to
reference code directly copied from libc/stdlib/qsort.c.

PR:	228780
Reported by:	mliska@suse.cz
Reviewed by:	brooks
Sponsored by:	The FreeBSD Foundation
MFC after:	2 weeks
Differential revision:	https://reviews.freebsd.org/D15714
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '6ec30ab', '2018-04-14', 'Dimitry Andric', 'Revert r332501 for now, as it can cause build failures on i386. Reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=37133>.', 'Revert r332501 for now, as it can cause build failures on i386.
Reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=37133>.

Reported by:	emaste, ci.freebsd.org
PR:		225330
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '5a917c0', '2018-04-14', 'dim', 'Revert r332501 for now, as it can cause build failures on i386. Reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=37133>.', 'Revert r332501 for now, as it can cause build failures on i386.
Reported upstream as <https://bugs.llvm.org/show_bug.cgi?id=37133>.

Reported by:	emaste, ci.freebsd.org
PR:		225330
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'c85e8ae', '2018-03-17', 'dim', 'Pull in r321999 from upstream clang trunk (by Ivan A. Kosarev):', 'Pull in r321999 from upstream clang trunk (by Ivan A. Kosarev):

  [CodeGen] Fix TBAA info for accesses to members of base classes

  Resolves:
  Bug 35724 - regression (r315984): fatal error: error in backend:
  Broken function found (Did not see access type in access path!)
  https://bugs.llvm.org/show_bug.cgi?id=35724

  Differential Revision: https://reviews.llvm.org/D41547

This fixes "Did not see access type in access path" fatal errors when
building the devel/gdb port (version 8.1).

Reported by:	jbeich
PR:		226658
MFC after:	3 months
X-MFC-With:	r327952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'bf22ec6', '2018-03-17', 'Dimitry Andric', 'Pull in r321999 from upstream clang trunk (by Ivan A. Kosarev):', 'Pull in r321999 from upstream clang trunk (by Ivan A. Kosarev):

  [CodeGen] Fix TBAA info for accesses to members of base classes

  Resolves:
  Bug 35724 - regression (r315984): fatal error: error in backend:
  Broken function found (Did not see access type in access path!)
  https://bugs.llvm.org/show_bug.cgi?id=35724

  Differential Revision: https://reviews.llvm.org/D41547

This fixes "Did not see access type in access path" fatal errors when
building the devel/gdb port (version 8.1).

Reported by:	jbeich
PR:		226658
MFC after:	3 months
X-MFC-With:	r327952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '18672e1', '2018-03-17', 'dim', 'Pull in r327638 from upstream llvm trunk (by Matthew Simpson):', 'Pull in r327638 from upstream llvm trunk (by Matthew Simpson):

  [ConstantFolding, InstSimplify] Handle more vector GEPs

  This patch addresses some additional cases where the compiler crashes
  upon encountering vector GEPs. This should fix PR36116.

  Differential Revision: https://reviews.llvm.org/D44219
  Reference: https://bugs.llvm.org/show_bug.cgi?id=36116

This fixes an assertion when building the emulators/snes9x port.

Reported by:	jbeich
PR:		225471
MFC after:	3 months
X-MFC-With:	r327952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '077d36a', '2018-03-17', 'Dimitry Andric', 'Pull in r327638 from upstream llvm trunk (by Matthew Simpson):', 'Pull in r327638 from upstream llvm trunk (by Matthew Simpson):

  [ConstantFolding, InstSimplify] Handle more vector GEPs

  This patch addresses some additional cases where the compiler crashes
  upon encountering vector GEPs. This should fix PR36116.

  Differential Revision: https://reviews.llvm.org/D44219
  Reference: https://bugs.llvm.org/show_bug.cgi?id=36116

This fixes an assertion when building the emulators/snes9x port.

Reported by:	jbeich
PR:		225471
MFC after:	3 months
X-MFC-With:	r327952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '14bd370', '2018-03-09', 'dim', 'Pull in r326882 from upstream llvm trunk (by Sjoerd Meijer):', 'Pull in r326882 from upstream llvm trunk (by Sjoerd Meijer):

  [ARM] Fix for PR36577

  Don\'t PerformSHLSimplify if the given node is used by a node that
  also uses a constant because we may get stuck in an infinite combine
  loop.

  bugzilla: https://bugs.llvm.org/show_bug.cgi?id=36577

  Patch by Sam Parker.

  Differential Revision: https://reviews.llvm.org/D44097

This fixes a hang when compiling one particular file in java/openjdk8
for armv6 and armv7.

Reported by:	swills
PR:		226388
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'a3fedce', '2018-03-09', 'Dimitry Andric', 'Pull in r326882 from upstream llvm trunk (by Sjoerd Meijer):', 'Pull in r326882 from upstream llvm trunk (by Sjoerd Meijer):

  [ARM] Fix for PR36577

  Don\'t PerformSHLSimplify if the given node is used by a node that
  also uses a constant because we may get stuck in an infinite combine
  loop.

  bugzilla: https://bugs.llvm.org/show_bug.cgi?id=36577

  Patch by Sam Parker.

  Differential Revision: https://reviews.llvm.org/D44097

This fixes a hang when compiling one particular file in java/openjdk8
for armv6 and armv7.

Reported by:	swills
PR:		226388
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '5a559c7', '2018-02-11', 'jhibbits', 'Fix uninitialized warning, and work around a bug in gcc over clobbering', 'Fix uninitialized warning, and work around a bug in gcc over clobbering

Summary:
r329077 caused gcc to emit uninitialized use warnings.  Attempting to
fix those warnings yielded the following warnings:

usr.bin/tftp/main.c: In function \'main\':
usr.bin/tftp/main.c:181: warning: variable \'el\' might be clobbered by
\'longjmp\' or \'vfork\'
usr.bin/tftp/main.c:182: warning: variable \'hist\' might be clobbered by
\'longjmp\' or \'vfork\'

This is a known bug in gcc, found at
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=24239

Work around that by simply marking hist and el as static.

Reviewed by:	imp
Differential Revision:	https://reviews.freebsd.org/D14302
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'e4803b1', '2018-02-11', 'Justin Hibbits', 'Fix uninitialized warning, and work around a bug in gcc over clobbering', 'Fix uninitialized warning, and work around a bug in gcc over clobbering

Summary:
r329077 caused gcc to emit uninitialized use warnings.  Attempting to
fix those warnings yielded the following warnings:

usr.bin/tftp/main.c: In function \'main\':
usr.bin/tftp/main.c:181: warning: variable \'el\' might be clobbered by
\'longjmp\' or \'vfork\'
usr.bin/tftp/main.c:182: warning: variable \'hist\' might be clobbered by
\'longjmp\' or \'vfork\'

This is a known bug in gcc, found at
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=24239

Work around that by simply marking hist and el as static.

Reviewed by:	imp
Differential Revision:	https://reviews.freebsd.org/D14302
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '89a9f9b', '2018-02-09', 'dim', 'Pull in r324594 from upstream clang trunk (by Alexander Ivchenko):', 'Pull in r324594 from upstream clang trunk (by Alexander Ivchenko):

  Fix for #31362 - ms_abi is implemented incorrectly for values >=16
  bytes.

  Summary:
  This patch is a fix for following issue:
  https://bugs.llvm.org/show_bug.cgi?id=31362 The problem was caused by
  front end lowering C calling conventions without taking into account
  calling conventions enforced by attribute. In this case win64cc was
  no correctly lowered on targets other than Windows.

  Reviewed By: rnk (Reid Kleckner)

  Differential Revision: https://reviews.llvm.org/D43016

  Author: belickim <mateusz.belicki@intel.com>

This fixes clang 6.0.0 assertions when building the emulators/wine and
emulators/wine-devel ports, and should also make it use the correct
Windows calling conventions.  Bump __FreeBSD_version to make the fix
easy to detect.

PR:		224863
MFC after:	3 months
X-MFC-With:	r327952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b1562cf', '2018-02-09', 'Dimitry Andric', 'Pull in r324594 from upstream clang trunk (by Alexander Ivchenko):', 'Pull in r324594 from upstream clang trunk (by Alexander Ivchenko):

  Fix for #31362 - ms_abi is implemented incorrectly for values >=16
  bytes.

  Summary:
  This patch is a fix for following issue:
  https://bugs.llvm.org/show_bug.cgi?id=31362 The problem was caused by
  front end lowering C calling conventions without taking into account
  calling conventions enforced by attribute. In this case win64cc was
  no correctly lowered on targets other than Windows.

  Reviewed By: rnk (Reid Kleckner)

  Differential Revision: https://reviews.llvm.org/D43016

  Author: belickim <mateusz.belicki@intel.com>

This fixes clang 6.0.0 assertions when building the emulators/wine and
emulators/wine-devel ports, and should also make it use the correct
Windows calling conventions.  Bump __FreeBSD_version to make the fix
easy to detect.

PR:		224863
MFC after:	3 months
X-MFC-With:	r327952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '144a105', '2018-01-10', 'dim', 'Pull in r322041 from upstream lld trunk (by Rui Ueyama):', 'Pull in r322041 from upstream lld trunk (by Rui Ueyama):

  Do not use parallelForEach to call maybeCompress().

  Currently LLVM\'s paralellForEach has a problem with reentracy.
  That caused https://bugs.llvm.org/show_bug.cgi?id=35788 (lld somtimes
  hangs while linking Ruby 2.4) because maybeCompress calls writeTo
  which uses paralellForEach.

  This patch is to avoid using paralellForEach to call maybeCompress to
  workaround the issue.

This should fix potential hangs when linking parts of ruby24.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '18a7633', '2018-01-10', 'Dimitry Andric', 'Pull in r322041 from upstream lld trunk (by Rui Ueyama):', 'Pull in r322041 from upstream lld trunk (by Rui Ueyama):

  Do not use parallelForEach to call maybeCompress().

  Currently LLVM\'s paralellForEach has a problem with reentracy.
  That caused https://bugs.llvm.org/show_bug.cgi?id=35788 (lld somtimes
  hangs while linking Ruby 2.4) because maybeCompress calls writeTo
  which uses paralellForEach.

  This patch is to avoid using paralellForEach to call maybeCompress to
  workaround the issue.

This should fix potential hangs when linking parts of ruby24.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '5d163b0', '2017-12-29', 'dim', 'Work around a clang 6.0.0 issue with rep prefixes followed by .byte directives (as reported in https://bugs.llvm.org/show_bug.cgi?id=35749), by defining the rep prefix with yet another .byte directive.', 'Work around a clang 6.0.0 issue with rep prefixes followed by .byte
directives (as reported in https://bugs.llvm.org/show_bug.cgi?id=35749),
by defining the rep prefix with yet another .byte directive.

This is a temporary fix, to be reverted before merging back to head,
until upstream has a proper fix for this.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '2055323', '2017-12-29', 'Dimitry Andric', 'Work around a clang 6.0.0 issue with rep prefixes followed by .byte directives (as reported in https://bugs.llvm.org/show_bug.cgi?id=35749), by defining the rep prefix with yet another .byte directive.', 'Work around a clang 6.0.0 issue with rep prefixes followed by .byte
directives (as reported in https://bugs.llvm.org/show_bug.cgi?id=35749),
by defining the rep prefix with yet another .byte directive.

This is a temporary fix, to be reverted before merging back to head,
until upstream has a proper fix for this.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '5826cfa', '2017-12-05', 'emaste', 'lld: make -v behave similarly to GNU ld.bfd', 'lld: make -v behave similarly to GNU ld.bfd

Previously, lld exited with an error status if the only option given to
the command was -v. GNU linkers gracefully exit in that case. This patch
makes lld behave like GNU.

Note that even with this patch, lld\'s -v and --version options behave
slightly differently than GNU linkers\' counterparts. For example,
if you run ld.bfd -v -v, the version string is printed out twice.
But that is an edge case that I don\'t think we need to take care of.

Fixes https://bugs.llvm.org/show_bug.cgi?id=31582

Obtained from:	LLVM r319717
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'a6aca65', '2017-12-05', 'Ed Maste', 'lld: make -v behave similarly to GNU ld.bfd', 'lld: make -v behave similarly to GNU ld.bfd

Previously, lld exited with an error status if the only option given to
the command was -v. GNU linkers gracefully exit in that case. This patch
makes lld behave like GNU.

Note that even with this patch, lld\'s -v and --version options behave
slightly differently than GNU linkers\' counterparts. For example,
if you run ld.bfd -v -v, the version string is printed out twice.
But that is an edge case that I don\'t think we need to take care of.

Fixes https://bugs.llvm.org/show_bug.cgi?id=31582

Obtained from:	LLVM r319717
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '14adb10', '2017-11-27', 'mmel', 'Addd work around for LLVM bug 35023.', 'Addd work around for LLVM bug 35023.

Clang crashes when compiling zstd_compress.c with optimization for ARM targets.
https://bugs.llvm.org/show_bug.cgi?id=35023
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '30347b7', '2017-11-27', 'Michal Meloun', 'Addd work around for LLVM bug 35023.', 'Addd work around for LLVM bug 35023.

Clang crashes when compiling zstd_compress.c with optimization for ARM targets.
https://bugs.llvm.org/show_bug.cgi?id=35023
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '04dc31b', '2017-03-06', 'dim', 'For now, revert r287232 from upstream llvm trunk (by Daniil Fukalov):', 'For now, revert r287232 from upstream llvm trunk (by Daniil Fukalov):

  [SCEV] limit recursion depth of CompareSCEVComplexity

  Summary:
  CompareSCEVComplexity goes too deep (50+ on a quite a big unrolled
  loop) and runs almost infinite time.

  Added cache of "equal" SCEV pairs to earlier cutoff of further
  estimation. Recursion depth limit was also introduced as a parameter.

  Reviewers: sanjoy

  Subscribers: mzolotukhin, tstellarAMD, llvm-commits

  Differential Revision: https://reviews.llvm.org/D26389

This commit is the cause of excessive compile times on skein_block.c
(and possibly other files) during kernel builds on amd64.

We never saw the problematic behavior described in this upstream commit,
so for now it is better to revert it.  An upstream bug has been filed
here: https://bugs.llvm.org/show_bug.cgi?id=32142

Reported by:	mjg
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'd754696', '2017-03-06', 'Dimitry Andric', 'For now, revert r287232 from upstream llvm trunk (by Daniil Fukalov):', 'For now, revert r287232 from upstream llvm trunk (by Daniil Fukalov):

  [SCEV] limit recursion depth of CompareSCEVComplexity

  Summary:
  CompareSCEVComplexity goes too deep (50+ on a quite a big unrolled
  loop) and runs almost infinite time.

  Added cache of "equal" SCEV pairs to earlier cutoff of further
  estimation. Recursion depth limit was also introduced as a parameter.

  Reviewers: sanjoy

  Subscribers: mzolotukhin, tstellarAMD, llvm-commits

  Differential Revision: https://reviews.llvm.org/D26389

This commit is the cause of excessive compile times on skein_block.c
(and possibly other files) during kernel builds on amd64.

We never saw the problematic behavior described in this upstream commit,
so for now it is better to revert it.  An upstream bug has been filed
here: https://bugs.llvm.org/show_bug.cgi?id=32142

Reported by:	mjg
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '47616ff', '2017-01-08', 'kib', 'Export __cxa_thread_atexit_impl as an alias for __cxa_thread_atexit.', 'Export __cxa_thread_atexit_impl as an alias for __cxa_thread_atexit.

libstdc++ before gcc r244057 expected that libc provided
__cxa_thread_atexit_impl, and libstdc++ implemented
__cxa_thread_atexit, by forwarding the calls to _impl.  Mentioned gcc
revision checks for __cxa_thread_atexit in libc and does not provide
the symbol from libstdc++ if found.

This change helps older gcc, in particular, all released versions
which implement thread_local, by consolidating the implementation into
libc.  For that versions, if configured with the current libc, the
__cxa_thread_atexit is exported from libstdc++ as a trivial wrapper
around libc::__cxa_thread_atexit_impl.

The __cxa_thread_atexit implementation is put into separate source
file to allow for static linking with older libstdc++.a.

gcc bugzilla:	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=78968
Reported by:	Hannes Hauswedell <h2+fbsdports@fsfe.org>
PR:	215709
Sponsored by:	The FreeBSD Foundation
MFC after:	2 weeks
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b7c7684', '2017-01-08', 'Konstantin Belousov', 'Export __cxa_thread_atexit_impl as an alias for __cxa_thread_atexit.', 'Export __cxa_thread_atexit_impl as an alias for __cxa_thread_atexit.

libstdc++ before gcc r244057 expected that libc provided
__cxa_thread_atexit_impl, and libstdc++ implemented
__cxa_thread_atexit, by forwarding the calls to _impl.  Mentioned gcc
revision checks for __cxa_thread_atexit in libc and does not provide
the symbol from libstdc++ if found.

This change helps older gcc, in particular, all released versions
which implement thread_local, by consolidating the implementation into
libc.  For that versions, if configured with the current libc, the
__cxa_thread_atexit is exported from libstdc++ as a trivial wrapper
around libc::__cxa_thread_atexit_impl.

The __cxa_thread_atexit implementation is put into separate source
file to allow for static linking with older libstdc++.a.

gcc bugzilla:	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=78968
Reported by:	Hannes Hauswedell <h2+fbsdports@fsfe.org>
PR:	215709
Sponsored by:	The FreeBSD Foundation
MFC after:	2 weeks
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '6976026', '2015-10-12', 'pfg', 'Correct handling of enum attributes with g++', 'Correct handling of enum attributes with g++

From OpenBSD\'s commit log:

This was responsible for memory corruption with recent versions
of Mesa where c and c++ code share a header with a packed enum type.

Reference:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=39219

Obtained from:	OpenBSD (CVS rev. 1.2)
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'e277c15', '2015-10-12', 'Pedro F. Giffuni', 'Correct handling of enum attributes with g++', 'Correct handling of enum attributes with g++

From OpenBSD\'s commit log:

This was responsible for memory corruption with recent versions
of Mesa where c and c++ code share a header with a packed enum type.

Reference:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=39219

Obtained from:	OpenBSD (CVS rev. 1.2)
MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '1bb3c00', '2015-10-08', 'rodrigc', 'Use -fpermissive if compiling with GCC.', 'Use -fpermissive if compiling with GCC.

Works around GCC bug:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67888
when compiling Module.cpp
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '4c92141', '2015-10-08', 'Craig Rodrigues', 'Use -fpermissive if compiling with GCC.', 'Use -fpermissive if compiling with GCC.

Works around GCC bug:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67888
when compiling Module.cpp
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '76a5c6a', '2014-12-11', 'dim', 'MFC r275477:', 'MFC r275477:

Pull in r174303 from upstream gcc trunk (by Jason Merrill):

  PR c++/48211
  * name-lookup.h (cp_class_binding): Make base a pointer.
  * name-lookup.c (new_class_binding): Adjust.
  (poplevel_class): Adjust.

This fixes a potential segfault when compiling gold, a part of the
devel/binutils port, with gcc.  See also the upstream bug report:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=48211

Thanks to Jason Merrill, Tom Callaway and Red Hat legal for approving
the use of this patch under the GNU GPL, version 2 or later.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'bf1cd11', '2014-12-05', 'dim', 'Pull in r174303 from upstream gcc trunk (by Jason Merrill):', 'Pull in r174303 from upstream gcc trunk (by Jason Merrill):

  PR c++/48211
  * name-lookup.h (cp_class_binding): Make base a pointer.
  * name-lookup.c (new_class_binding): Adjust.
  (poplevel_class): Adjust.

This fixes a potential segfault when compiling gold, a part of the
devel/binutils port, with gcc.  See also the upstream bug report:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=48211

Thanks to Jason Merrill, Tom Callaway and Red Hat legal for approving
the use of this patch under the GNU GPL, version 2 or later.

MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b42a695', '2014-12-05', 'Dimitry Andric', 'Pull in r174303 from upstream gcc trunk (by Jason Merrill):', 'Pull in r174303 from upstream gcc trunk (by Jason Merrill):

  PR c++/48211
  * name-lookup.h (cp_class_binding): Make base a pointer.
  * name-lookup.c (new_class_binding): Adjust.
  (poplevel_class): Adjust.

This fixes a potential segfault when compiling gold, a part of the
devel/binutils port, with gcc.  See also the upstream bug report:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=48211

Thanks to Jason Merrill, Tom Callaway and Red Hat legal for approving
the use of this patch under the GNU GPL, version 2 or later.

MFC after:	1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'b3f67be', '2012-05-01', 'Oleksandr Tymoshenko', 'Unbreak jemalloc build with MALLOC_PRODUCTION set. New jemalloc version uncovered MIPS-related gcc bug described in     http://gcc.gnu.org/bugzilla/show_bug.cgi?id=33256', 'Unbreak jemalloc build with MALLOC_PRODUCTION set. New jemalloc version
uncovered MIPS-related gcc bug described in
    http://gcc.gnu.org/bugzilla/show_bug.cgi?id=33256

The patch was obtained from r128198 in gcc-4_1-branch, which is GPLv2,
so it\'s OK to merge it.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'e93013a', '2012-05-01', 'gonzo', 'Unbreak jemalloc build with MALLOC_PRODUCTION set. New jemalloc version uncovered MIPS-related gcc bug described in     http://gcc.gnu.org/bugzilla/show_bug.cgi?id=33256', 'Unbreak jemalloc build with MALLOC_PRODUCTION set. New jemalloc version
uncovered MIPS-related gcc bug described in
    http://gcc.gnu.org/bugzilla/show_bug.cgi?id=33256

The patch was obtained from r128198 in gcc-4_1-branch, which is GPLv2,
so it\'s OK to merge it.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '3fcd159', '2011-11-09', 'fabient', 'Import gcc fix for -fstack-protector that produces segfaulting binaries on arm/armel.', 'Import gcc fix for -fstack-protector that produces segfaulting
binaries on arm/armel.

Related gcc bug:
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=35965

PR: 161128
MFC after: 1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'da5a448', '2011-11-09', 'Fabien Thomas', 'Import gcc fix for -fstack-protector that produces segfaulting binaries on arm/armel.', 'Import gcc fix for -fstack-protector that produces segfaulting
binaries on arm/armel.

Related gcc bug:
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=35965

PR: 161128
MFC after: 1 week
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '062f7fc', '2009-07-22', 'bms', 'Output DWARF debug information for global \'using\' declarations, instead of just blowing up. A very similar change to this exists which is GPLv3 licensed, this is my own change.', 'Output DWARF debug information for global \'using\' declarations, instead
of just blowing up. A very similar change to this exists which is
GPLv3 licensed, this is my own change.

This problem was triggered by running the Boost regression tests.

See also:	http://gcc.gnu.org/bugzilla/show_bug.cgi?id=31899
Reviewed by:	luigi
Approved by:	re (kib)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'f667763', '2009-07-22', 'Bruce M Simpson', 'Output DWARF debug information for global \'using\' declarations, instead of just blowing up. A very similar change to this exists which is GPLv3 licensed, this is my own change.', 'Output DWARF debug information for global \'using\' declarations, instead
of just blowing up. A very similar change to this exists which is
GPLv3 licensed, this is my own change.

This problem was triggered by running the Boost regression tests.

See also:	http://gcc.gnu.org/bugzilla/show_bug.cgi?id=31899
Reviewed by:	luigi
Approved by:	re (kib)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', 'a099abc', '2007-06-27', 'ache', 'This is temp workaround of nasty gcc 4.2.0 -O2 bug which may skip the rest of the loop when arrays used inside. http://gcc.gnu.org/bugzilla/show_bug.cgi?id=32500', 'This is temp workaround of nasty gcc 4.2.0 -O2 bug which may skip the rest
of the loop when arrays used inside.
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=32500

Approved by:    re (kensmith)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('freebsd', '3f5b2c2', '2007-06-27', 'Andrey A. Chernov', 'This is temp workaround of nasty gcc 4.2.0 -O2 bug which may skip the rest of the loop when arrays used inside. http://gcc.gnu.org/bugzilla/show_bug.cgi?id=32500', 'This is temp workaround of nasty gcc 4.2.0 -O2 bug which may skip the rest
of the loop when arrays used inside.
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=32500

Approved by:    re (kensmith)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'aef25be', '2024-12-18', 'Nathan Chancellor', 'hexagon: Disable constant extender optimization for LLVM prior to 19.1.0', 'hexagon: Disable constant extender optimization for LLVM prior to 19.1.0

The Hexagon-specific constant extender optimization in LLVM may crash on
Linux kernel code [1], such as fs/bcache/btree_io.c after
commit 32ed4a620c54 ("bcachefs: Btree path tracepoints") in 6.12:

  clang: llvm/lib/Target/Hexagon/HexagonConstExtenders.cpp:745: bool (anonymous namespace)::HexagonConstExtenders::ExtRoot::operator<(const HCE::ExtRoot &) const: Assertion `ThisB->getParent() == OtherB->getParent()\' failed.
  Stack dump:
  0.      Program arguments: clang --target=hexagon-linux-musl ... fs/bcachefs/btree_io.c
  1.      <eof> parser at end of file
  2.      Code generation
  3.      Running pass \'Function Pass Manager\' on module \'fs/bcachefs/btree_io.c\'.
  4.      Running pass \'Hexagon constant-extender optimization\' on function \'@__btree_node_lock_nopath\'

Without assertions enabled, there is just a hang during compilation.

This has been resolved in LLVM main (20.0.0) [2] and backported to LLVM
19.1.0 but the kernel supports LLVM 13.0.1 and newer, so disable the
constant expander optimization using the \'-mllvm\' option when using a
toolchain that is not fixed.

Cc: stable@vger.kernel.org
Link: https://github.com/llvm/llvm-project/issues/99714 [1]
Link: https://github.com/llvm/llvm-project/commit/68df06a0b2998765cb0a41353fcf0919bbf57ddb [2]
Link: https://github.com/llvm/llvm-project/commit/2ab8d93061581edad3501561722ebd5632d73892 [3]
Reviewed-by: Brian Cain <bcain@quicinc.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd938150', '2024-12-05', 'Yafang shao', 'audit: workaround a GCC bug triggered by task comm changes', 'audit: workaround a GCC bug triggered by task comm changes

A build failure has been reported with the following details:

   In file included from include/linux/string.h:390,
                    from include/linux/bitmap.h:13,
                    from include/linux/cpumask.h:12,
                    from include/linux/smp.h:13,
                    from include/linux/lockdep.h:14,
                    from include/linux/spinlock.h:63,
                    from include/linux/wait.h:9,
                    from include/linux/wait_bit.h:8,
                    from include/linux/fs.h:6,
                    from kernel/auditsc.c:37:
   In function \'sized_strscpy\',
       inlined from \'__audit_ptrace\' at kernel/auditsc.c:2732:2:
>> include/linux/fortify-string.h:293:17:
   error: call to \'__write_overflow\' declared with attribute error:
   detected write beyond size of object (1st parameter)
     293 |                 __write_overflow();
         |                 ^~~~~~~~~~~~~~~~~~
   In function \'sized_strscpy\',
       inlined from \'audit_signal_info_syscall\' at kernel/auditsc.c:2759:3:
>> include/linux/fortify-string.h:293:17:
   error: call to \'__write_overflow\' declared with attribute error:
   detected write beyond size of object (1st parameter)
     293 |                 __write_overflow();
         |                 ^~~~~~~~~~~~~~~~~~

The issue appears to be a GCC bug, though the root cause remains
unclear at this time. For now, let\'s implement a workaround.

A bug report has also been filed with GCC [0].

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=117912 [0]

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202410171420.1V00ICVG-lkp@intel.com/
Reported-by: Steven Rostedt (Google) <rostedt@goodmis.org>
Closes: https://lore.kernel.org/all/20241128182435.57a1ea6f@gandalf.local.home/
Reported-by: Zhuo, Qiuxu <qiuxu.zhuo@intel.com>
Closes: https://lore.kernel.org/all/CY8PR11MB71348E568DBDA576F17DAFF389362@CY8PR11MB7134.namprd11.prod.outlook.com/
Originally-by: Kees Cook <kees@kernel.org>
Link: https://lore.kernel.org/linux-hardening/202410171059.C2C395030@keescook/
Signed-off-by: Yafang shao <laoar.shao@gmail.com>
Tested-by: Steven Rostedt (Google) <rostedt@goodmis.org>
Tested-by: Yafang Shao <laoar.shao@gmail.com>
[PM: subject tweak, description line wrapping]
Signed-off-by: Paul Moore <paul@paul-moore.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5fe6caa', '2024-11-15', 'Andrej Shadura', 'Bluetooth: Fix type of len in rfcomm_sock_getsockopt{,_old}()', 'Bluetooth: Fix type of len in rfcomm_sock_getsockopt{,_old}()

Commit 9bf4e919ccad worked around an issue introduced after an innocuous
optimisation change in LLVM main:

> len is defined as an \'int\' because it is assigned from
> \'__user int *optlen\'. However, it is clamped against the result of
> sizeof(), which has a type of \'size_t\' (\'unsigned long\' for 64-bit
> platforms). This is done with min_t() because min() requires compatible
> types, which results in both len and the result of sizeof() being casted
> to \'unsigned int\', meaning len changes signs and the result of sizeof()
> is truncated. From there, len is passed to copy_to_user(), which has a
> third parameter type of \'unsigned long\', so it is widened and changes
> signs again. This excessive casting in combination with the KCSAN
> instrumentation causes LLVM to fail to eliminate the __bad_copy_from()
> call, failing the build.

The same issue occurs in rfcomm in functions rfcomm_sock_getsockopt and
rfcomm_sock_getsockopt_old.

Change the type of len to size_t in both rfcomm_sock_getsockopt and
rfcomm_sock_getsockopt_old and replace min_t() with min().

Cc: stable@vger.kernel.org
Co-authored-by: Aleksei Vetrov <vvvvvv@google.com>
Improves: 9bf4e919ccad ("Bluetooth: Fix type of len in {l2cap,sco}_sock_getsockopt_old()")
Link: https://github.com/ClangBuiltLinux/linux/issues/2007
Link: https://github.com/llvm/llvm-project/issues/85647
Signed-off-by: Andrej Shadura <andrew.shadura@collabora.co.uk>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5b188cc', '2024-11-05', 'Sean Christopherson', 'KVM: selftests: Disable strict aliasing', 'KVM: selftests: Disable strict aliasing

Disable strict aliasing, as has been done in the kernel proper for decades
(literally since before git history) to fix issues where gcc will optimize
away loads in code that looks 100% correct, but is _technically_ undefined
behavior, and thus can be thrown away by the compiler.

E.g. arm64\'s vPMU counter access test casts a uint64_t (unsigned long)
pointer to a u64 (unsigned long long) pointer when setting PMCR.N via
u64p_replace_bits(), which gcc-13 detects and optimizes away, i.e. ignores
the result and uses the original PMCR.

The issue is most easily observed by making set_pmcr_n() noinline and
wrapping the call with printf(), e.g. sans comments, for this code:

  printf("orig = %lx, next = %lx, want = %lu\\n", pmcr_orig, pmcr, pmcr_n);
  set_pmcr_n(&pmcr, pmcr_n);
  printf("orig = %lx, next = %lx, want = %lu\\n", pmcr_orig, pmcr, pmcr_n);

gcc-13 generates:

 0000000000401c90 <set_pmcr_n>:
  401c90:       f9400002        ldr     x2, [x0]
  401c94:       b3751022        bfi     x2, x1, #11, #5
  401c98:       f9000002        str     x2, [x0]
  401c9c:       d65f03c0        ret

 0000000000402660 <test_create_vpmu_vm_with_pmcr_n>:
  402724:       aa1403e3        mov     x3, x20
  402728:       aa1503e2        mov     x2, x21
  40272c:       aa1603e0        mov     x0, x22
  402730:       aa1503e1        mov     x1, x21
  402734:       940060ff        bl      41ab30 <_IO_printf>
  402738:       aa1403e1        mov     x1, x20
  40273c:       910183e0        add     x0, sp, #0x60
  402740:       97fffd54        bl      401c90 <set_pmcr_n>
  402744:       aa1403e3        mov     x3, x20
  402748:       aa1503e2        mov     x2, x21
  40274c:       aa1503e1        mov     x1, x21
  402750:       aa1603e0        mov     x0, x22
  402754:       940060f7        bl      41ab30 <_IO_printf>

with the value stored in [sp + 0x60] ignored by both printf() above and
in the test proper, resulting in a false failure due to vcpu_set_reg()
simply storing the original value, not the intended value.

  $ ./vpmu_counter_access
  Random seed: 0x6b8b4567
  orig = 3040, next = 3040, want = 0
  orig = 3040, next = 3040, want = 0
  ==== Test Assertion Failure ====
    aarch64/vpmu_counter_access.c:505: pmcr_n == get_pmcr_n(pmcr)
    pid=71578 tid=71578 errno=9 - Bad file descriptor
       1        0x400673: run_access_test at vpmu_counter_access.c:522
       2         (inlined by) main at vpmu_counter_access.c:643
       3        0x4132d7: __libc_start_call_main at libc-start.o:0
       4        0x413653: __libc_start_main at ??:0
       5        0x40106f: _start at ??:0
    Failed to update PMCR.N to 0 (received: 6)

Somewhat bizarrely, gcc-11 also exhibits the same behavior, but only if
set_pmcr_n() is marked noinline, whereas gcc-13 fails even if set_pmcr_n()
is inlined in its sole caller.

Cc: stable@vger.kernel.org
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=116912
Signed-off-by: Sean Christopherson <seanjc@google.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '0b98465', '2024-10-31', 'Naveen N Rao', 'powerpc/trace: Account for -fpatchable-function-entry support by toolchain', 'powerpc/trace: Account for -fpatchable-function-entry support by toolchain

So far, we have relied on the fact that gcc supports both
-mprofile-kernel, as well as -fpatchable-function-entry, and clang
supports neither. Our Makefile only checks for CONFIG_MPROFILE_KERNEL to
decide which files to build. Clang has a feature request out [*] to
implement -fpatchable-function-entry, and is unlikely to support
-mprofile-kernel.

Update our Makefile checks so that we pick up the correct files to build
once clang picks up support for -fpatchable-function-entry.

[*] https://github.com/llvm/llvm-project/issues/57031

Signed-off-by: Naveen N Rao <naveen@kernel.org>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://patch.msgid.link/20241030070850.1361304-2-hbathini@linux.ibm.com

');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '894b00a', '2024-10-23', 'Marco Elver', 'kasan: Fix Software Tag-Based KASAN with GCC', 'kasan: Fix Software Tag-Based KASAN with GCC

Per [1], -fsanitize=kernel-hwaddress with GCC currently does not disable
instrumentation in functions with __attribute__((no_sanitize_address)).

However, __attribute__((no_sanitize("hwaddress"))) does correctly
disable instrumentation. Use it instead.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=117196 [1]
Link: https://lore.kernel.org/r/000000000000f362e80620e27859@google.com
Link: https://lore.kernel.org/r/ZvFGwKfoC4yVjN_X@J2N7QTR9R3
Link: https://bugzilla.kernel.org/show_bug.cgi?id=218854
Reported-by: syzbot+908886656a02769af987@syzkaller.appspotmail.com
Tested-by: Andrey Konovalov <andreyknvl@gmail.com>
Cc: Andrew Pinski <pinskia@gmail.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
Reviewed-by: Andrey Konovalov <andreyknvl@gmail.com>
Fixes: 7b861a53e46b ("kasan: Bump required compiler version")
Link: https://lore.kernel.org/r/20241021120013.3209481-1-elver@google.com
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f2f6a8e', '2024-07-19', 'Mark Rutland', 'init/Kconfig: remove CONFIG_GCC_ASM_GOTO_OUTPUT_WORKAROUND', 'init/Kconfig: remove CONFIG_GCC_ASM_GOTO_OUTPUT_WORKAROUND

Several versions of GCC mis-compile asm goto with outputs. We try to
workaround this, but our workaround is demonstrably incomplete and
liable to result in subtle bugs, especially on arm64 where get_user()
has recently been moved over to using asm goto with outputs.

From discussion(s) with Linus at:

  https://lore.kernel.org/linux-arm-kernel/Zpfv2tnlQ-gOLGac@J2N7QTR9R3.cambridge.arm.com/
  https://lore.kernel.org/linux-arm-kernel/ZpfxLrJAOF2YNqCk@J2N7QTR9R3.cambridge.arm.com/

... it sounds like the best thing to do for now is to remove the
workaround and make CC_HAS_ASM_GOTO_OUTPUT depend on working compiler
versions.

The issue was originally reported to GCC by Sean Christopherson:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=113921

... and Jakub Jelinek fixed this for GCC 14, with the fix backported to
13.3.0, 12.4.0, and 11.5.0.

In the kernel, we tried to workaround broken compilers in commits:

  4356e9f841f7 ("work around gcc bugs with \'asm goto\' with outputs")
  68fb3ca0e408 ("update workarounds for gcc "asm goto" issue")

... but the workaround of adding an empty asm("") after the asm volatile
goto(...) demonstrably does not always avoid the problem, as can be seen
in the following test case:

| #define asm_goto_output(x...) \\
|         do { asm volatile goto(x); asm (""); } while (0)
|
| #define __good_or_bad(__val, __key)                                     \\
| do {                                                                    \\
|         __label__ __failed;                                             \\
|         unsigned long __tmp;                                            \\
|         asm_goto_output(                                                \\
|         "       cbnz    %[key], %l[__failed]\\n"                         \\
|         "       mov     %[val], #0x900d\\n"                              \\
|         : [val] "=r" (__tmp)                                            \\
|         : [key] "r" (__key)                                             \\
|         :                                                               \\
|         : __failed);                                                    \\
|         (__val) = __tmp;                                                \\
|         break;                                                          \\
| __failed:                                                               \\
|         (__val) = 0xbad;                                                \\
| } while (0)
|
| unsigned long get_val(unsigned long key);
| unsigned long get_val(unsigned long key)
| {
|         unsigned long val = 0xbad;
|
|         __good_or_bad(val, key);
|
|         return val;
| }

GCC 13.2.0 (at -O2) compiles this to:

| 	cbnz    x0, .Lfailed
| 	mov     x0, #0x900d
| .Lfailed:
| 	ret

GCC 14.1.0 (at -O2) compiles this to:

| 	cbnz    x0, .Lfailed
| 	mov     x0, #0x900d
| 	ret
| .Lfailed:
| 	mov     x0, #0xbad
| 	ret

Note that GCC 13.2.0 erroneously omits the assignment to \'val\' in the
error path (even though this does not depend on an output of the asm
goto). GCC 14.1.0 correctly retains the assignment.

This problem can be seen within the kernel with the following test case:

| #include <linux/uaccess.h>
| #include <linux/types.h>
|
| noinline unsigned long test_unsafe_get_user(unsigned long __user *ptr);
| noinline unsigned long test_unsafe_get_user(unsigned long __user *ptr)
| {
|         unsigned long val;
|
|         unsafe_get_user(val, ptr, Efault);
|         return val;
|
| Efault:
|         val = 0x900d;
|         return val;
| }

GCC 13.2.0 (arm64 defconfig) compiles this to:

|         and     x0, x0, #0xff7fffffffffffff
|         ldtr    x0, [x0]
| .Lextable_fixup:
|         ret

GCC 13.2.0 (x86_64 defconfig + MITIGATION_RETPOLINE=n) compiles this to:

|         endbr64
|         mov    (%rdi),%rax
| .Lextable_fixup:
|         ret

... omitting the assignment to \'val\' in the error path, and leaving
garbage in the result register returned by the function (which happens
to contain the faulting address in the generated code).

GCC 14.1.0 (arm64 defconfig) compiles this to:

|         and     x0, x0, #0xff7fffffffffffff
|         ldtr    x0, [x0]
|         ret
| .Lextable_fixup:
|         mov     x0, #0x900d                     // #36877
|         ret

GCC 14.1.0 (x86_64 defconfig + MITIGATION_RETPOLINE=n) compiles this to:

|         endbr64
|         mov    (%rdi),%rax
|         ret
| .Lextable_fixup:
|         mov    $0x900d,%eax
|         ret

... retaining the expected assignment to \'val\' in the error path.

We don\'t have a complete and reasonable workaround. While placing empty
asm("") blocks after each goto label *might* be sufficient, we don\'t
know for certain, this is tedious and error-prone, and there doesn\'t
seem to be a neat way to wrap this up (which is especially painful for
cases with multiple goto labels).

Avoid this issue by disabling CONFIG_CC_HAS_ASM_GOTO_OUTPUT for
known-broken compiler versions and removing the workaround (along with
the CONFIG_GCC_ASM_GOTO_OUTPUT_WORKAROUND config option).

For the moment I\'ve left the default implementation of asm_goto_output()
unchanged. This should now be redundant since any compiler with the fix
for the clobbering issue whould also have a fix for the (earlier)
volatile issue, but it\'s far less churny to leave it around, which makes
it easier to backport this patch if necessary.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Alex Coplan <alex.coplan@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Jakub Jelinek <jakub@gcc.gnu.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Sean Christopherson <seanjc@google.com>
Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'dbaaabd', '2024-05-23', 'Linus Torvalds', 'clang: work around asm input constraint problems', 'clang: work around asm input constraint problems

Work around clang problems with asm constraints that have multiple
possibilities, particularly "g" and "rm".

Clang seems to turn inputs like that into the most generic form, which
is the memory input - but to make matters worse, clang won\'t even use a
possible original memory location, but will spill the value to stack,
and use the stack for the asm input.

See

  https://github.com/llvm/llvm-project/issues/20571#issuecomment-980933442

for some explanation of why clang has this strange behavior, but the end
result is that "g" and "rm" really end up generating horrid code.

Link: https://github.com/llvm/llvm-project/issues/20571
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '8092162', '2024-04-25', 'Edward Liaw', 'selftests/harness: remove use of LINE_MAX', 'selftests/harness: remove use of LINE_MAX

Android was seeing a compliation error because its C library does not
define LINE_MAX.  This replaces the use of LINE_MAX / snprintf with
asprintf, which will change the behavior to not truncate the test name if
it is over 2048 chars long.

See also:
https://github.com/llvm/llvm-project/issues/88119

[akpm@linux-foundation.org: remove limits.h include, per Edward]
[akpm@linux-foundation.org: check asprintf() return]
[usama.anjum@collabora.com: fix undeclared function error]
  Link: https://lkml.kernel.org/r/20240417075530.3807625-1-usama.anjum@collabora.com
Link: https://lkml.kernel.org/r/20240411231954.62156-1-edliaw@google.com
Fixes: 38c957f07038 ("selftests: kselftest_harness: generate test name once")
Signed-off-by: Edward Liaw <edliaw@google.com>
Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: Andy Lutomirski <luto@amacapital.net>
Cc: Axel Rasmussen <axelrasmussen@google.com>
Cc: Bill Wendling <morbo@google.com>
Cc: David Hildenbrand <david@redhat.com>
Cc: Edward Liaw <edliaw@google.com>
Cc: Justin Stitt <justinstitt@google.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: "Mike Rapoport (IBM)" <rppt@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Xu <peterx@redhat.com>
Cc: Shuah Khan <shuah@kernel.org>
Cc: Will Drewry <wad@chromium.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '9bf4e91', '2024-04-25', 'Nathan Chancellor', 'Bluetooth: Fix type of len in {l2cap,sco}_sock_getsockopt_old()', 'Bluetooth: Fix type of len in {l2cap,sco}_sock_getsockopt_old()

After an innocuous optimization change in LLVM main (19.0.0), x86_64
allmodconfig (which enables CONFIG_KCSAN / -fsanitize=thread) fails to
build due to the checks in check_copy_size():

  In file included from net/bluetooth/sco.c:27:
  In file included from include/linux/module.h:13:
  In file included from include/linux/stat.h:19:
  In file included from include/linux/time.h:60:
  In file included from include/linux/time32.h:13:
  In file included from include/linux/timex.h:67:
  In file included from arch/x86/include/asm/timex.h:6:
  In file included from arch/x86/include/asm/tsc.h:10:
  In file included from arch/x86/include/asm/msr.h:15:
  In file included from include/linux/percpu.h:7:
  In file included from include/linux/smp.h:118:
  include/linux/thread_info.h:244:4: error: call to \'__bad_copy_from\'
  declared with \'error\' attribute: copy source size is too small
    244 |                         __bad_copy_from();
        |                         ^

The same exact error occurs in l2cap_sock.c. The copy_to_user()
statements that are failing come from l2cap_sock_getsockopt_old() and
sco_sock_getsockopt_old(). This does not occur with GCC with or without
KCSAN or Clang without KCSAN enabled.

len is defined as an \'int\' because it is assigned from
\'__user int *optlen\'. However, it is clamped against the result of
sizeof(), which has a type of \'size_t\' (\'unsigned long\' for 64-bit
platforms). This is done with min_t() because min() requires compatible
types, which results in both len and the result of sizeof() being casted
to \'unsigned int\', meaning len changes signs and the result of sizeof()
is truncated. From there, len is passed to copy_to_user(), which has a
third parameter type of \'unsigned long\', so it is widened and changes
signs again. This excessive casting in combination with the KCSAN
instrumentation causes LLVM to fail to eliminate the __bad_copy_from()
call, failing the build.

The official recommendation from LLVM developers is to consistently use
long types for all size variables to avoid the unnecessary casting in
the first place. Change the type of len to size_t in both
l2cap_sock_getsockopt_old() and sco_sock_getsockopt_old(). This clears
up the error while allowing min_t() to be replaced with min(), resulting
in simpler code with no casts and fewer implicit conversions. While len
is a different type than optlen now, it should result in no functional
change because the result of sizeof() will clamp all values of optlen in
the same manner as before.

Cc: stable@vger.kernel.org
Closes: https://github.com/ClangBuiltLinux/linux/issues/2007
Link: https://github.com/llvm/llvm-project/issues/85647
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Justin Stitt <justinstitt@google.com>
Signed-off-by: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '81741e8', '2024-04-15', 'Ricardo Ribalda', 'media: videodev2: Fix v4l2_ext_control packing.', 'media: videodev2: Fix v4l2_ext_control packing.

The structure is packed, which requires that all its fields need to be
also packed.

./include/uapi/linux/videodev2.h:1810:2: warning: field  within \'struct v4l2_ext_control\' is less aligned than \'union v4l2_ext_control::(anonymous at ./include/uapi/linux/videodev2.h:1810:2)\' and is usually due to \'struct v4l2_ext_control\' being packed, which can lead to unaligned accesses [-Wunaligned-access]

Explicitly set the inner union as packed.

Marking the inner union as \'packed\' does not change the layout, since the
whole struct is already packed, it just silences the clang warning. See
also this llvm discussion:

https://github.com/llvm/llvm-project/issues/55520

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2abcd95', '2024-04-15', 'Ricardo Ribalda', 'media: dvb: Fix dtvs_stats packing.', 'media: dvb: Fix dtvs_stats packing.

The structure is packed, which requires that all its fields need to be
also packed.

./include/uapi/linux/dvb/frontend.h:854:2: warning: field  within \'struct dtv_stats\' is less aligned than \'union dtv_stats::(anonymous at ./include/uapi/linux/dvb/frontend.h:854:2)\' and is usually due to \'struct dtv_stats\' being packed, which can lead to unaligned accesses [-Wunaligned-access]

Explicitly set the inner union as packed.

Marking the inner union as \'packed\' does not change the layout, since the
whole struct is already packed, it just silences the clang warning. See
also this llvm discussion:

https://github.com/llvm/llvm-project/issues/55520

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '309422d', '2024-04-15', 'Ricardo Ribalda', 'media: dvb: as102-fe: Fix as10x_register_addr packing', 'media: dvb: as102-fe: Fix as10x_register_addr packing

This structure is embedded in multiple other structures that are packed,
which conflicts with it being aligned.

drivers/media/usb/as102/as10x_cmd.h:379:30: warning: field reg_addr within \'struct as10x_dump_memory::(unnamed at drivers/media/usb/as102/as10x_cmd.h:373:2)\' is less aligned than \'struct as10x_register_addr\' and is usually due to \'struct as10x_dump_memory::(unnamed at drivers/media/usb/as102/as10x_cmd.h:373:2)\' being packed, which can lead to unaligned accesses [-Wunaligned-access]

Mark it as being packed.

Marking the inner struct as \'packed\' does not change the layout, since the
whole struct is already packed, it just silences the clang warning. See
also this llvm discussion:

https://github.com/llvm/llvm-project/issues/55520

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'af682b7', '2024-04-04', 'Alexei Starovoitov', 'bpf: Optimize emit_mov_imm64().', 'bpf: Optimize emit_mov_imm64().

Turned out that bpf prog callback addresses, bpf prog addresses
used in bpf_trampoline, and in other cases the 64-bit address
can be represented as sign extended 32-bit value.

According to https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82339
"Skylake has 0.64c throughput for mov r64, imm64, vs. 0.25 for mov r32, imm32."
So use shorter encoding and faster instruction when possible.

Special care is needed in jit_subprogs(), since bpf_pseudo_func()
instruction cannot change its size during the last step of JIT.

Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Link: https://lore.kernel.org/bpf/CAADnVQKFfpY-QZBrOU2CG8v2du8Lgyb7MNVmOZVK_yTyOdNbBA@mail.gmail.com
Link: https://lore.kernel.org/bpf/20240401233800.42737-1-alexei.starovoitov@gmail.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b6540de', '2024-03-25', 'Uros Bizjak', 'x86/percpu: Disable named address spaces for KCSAN', 'x86/percpu: Disable named address spaces for KCSAN

-fsanitize=thread (KCSAN) is at the moment incompatible
with named address spaces in a similar way as KASAN -
see GCC PR sanitizer/111736:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=111736

The patch disables named address spaces with KCSAN.

Reported-by: kernel test robot <oliver.sang@intel.com>
Signed-off-by: Uros Bizjak <ubizjak@gmail.com>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Link: https://lore.kernel.org/r/20240325110128.615933-1-ubizjak@gmail.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '9c1b86f', '2024-02-23', 'Nathan Chancellor', 'kbuild: raise the minimum supported version of LLVM to 13.0.1', 'kbuild: raise the minimum supported version of LLVM to 13.0.1

Patch series "Bump the minimum supported version of LLVM to 13.0.1".

This series bumps the minimum supported version of LLVM for building the
kernel to 13.0.1.  The first patch does the bump and all subsequent
patches clean up all the various workarounds and checks for earlier
versions.

Quoting the first patch\'s commit message for those that were only on CC
for the clean ups:

  When __builtin_mul_overflow() has arguments that differ in terms of
  signedness and width, LLVM may generate a libcall to __muloti4 because
  it performs the checks in terms of 65-bit multiplication. This issue
  becomes harder to hit (but still possible) after LLVM 12.0.0, which
  includes a special case for matching widths but different signs.

  To gain access to this special case, which the kernel can take advantage
  of when calls to __muloti4 appear, bump the minimum supported version of
  LLVM for building the kernel to 13.0.1. 13.0.1 was chosen because there
  is minimal impact to distribution support while allowing a few more
  workarounds to be dropped in the kernel source than if 12.0.0 were
  chosen. Looking at container images of up to date distribution versions:

    archlinux:latest              clang version 16.0.6
    debian:oldoldstable-slim      clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)
    debian:oldstable-slim         Debian clang version 11.0.1-2
    debian:stable-slim            Debian clang version 14.0.6
    debian:testing-slim           Debian clang version 16.0.6 (19)
    debian:unstable-slim          Debian clang version 16.0.6 (19)
    fedora:38                     clang version 16.0.6 (Fedora 16.0.6-3.fc38)
    fedora:latest                 clang version 17.0.6 (Fedora 17.0.6-1.fc39)
    fedora:rawhide                clang version 17.0.6 (Fedora 17.0.6-1.fc40)
    opensuse/leap:latest          clang version 15.0.7
    opensuse/tumbleweed:latest    clang version 17.0.6
    ubuntu:focal                  clang version 10.0.0-4ubuntu1
    ubuntu:latest                 Ubuntu clang version 14.0.0-1ubuntu1.1
    ubuntu:rolling                Ubuntu clang version 16.0.6 (15)
    ubuntu:devel                  Ubuntu clang version 17.0.6 (3)

  The only distribution that gets left behind is Debian Bullseye, as the
  default version is 11.0.1; other distributions either have a newer
  version than 13.0.1 or one older than the current minimum of 11.0.0.
  Debian has easy access to more recent LLVM versions through
  apt.llvm.org, so this is not as much of a concern. There are also the
  kernel.org LLVM toolchains, which should work with distributions with
  glibc 2.28 and newer.

  Another benefit of slimming up the number of supported versions of LLVM
  for building the kernel is reducing the build capacity needed to support
  a matrix that builds with each supported version, which allows a matrix
  to reallocate the freed up build capacity towards something else, such
  as more configuration combinations.

This passes my build matrix with all supported versions.

This is based on Andrew\'s mm-nonmm-unstable to avoid trivial conflicts
with my series to update the LLVM links across the repository [1] but I
can easily rebase it to linux-kbuild if Masahiro would rather these
patches go through there (and defer the conflict resolution to the merge
window).

[1]: https://lore.kernel.org/20240109-update-llvm-links-v1-0-eb09b59db071@kernel.org/


This patch (of 11):

When __builtin_mul_overflow() has arguments that differ in terms of
signedness and width, LLVM may generate a libcall to __muloti4 because it
performs the checks in terms of 65-bit multiplication.  This issue becomes
harder to hit (but still possible) after LLVM 12.0.0, which includes a
special case for matching widths but different signs.

To gain access to this special case, which the kernel can take advantage
of when calls to __muloti4 appear, bump the minimum supported version of
LLVM for building the kernel to 13.0.1.  13.0.1 was chosen because there
is minimal impact to distribution support while allowing a few more
workarounds to be dropped in the kernel source than if 12.0.0 were chosen.
Looking at container images of up to date distribution versions:

  archlinux:latest              clang version 16.0.6
  debian:oldoldstable-slim      clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)
  debian:oldstable-slim         Debian clang version 11.0.1-2
  debian:stable-slim            Debian clang version 14.0.6
  debian:testing-slim           Debian clang version 16.0.6 (19)
  debian:unstable-slim          Debian clang version 16.0.6 (19)
  fedora:38                     clang version 16.0.6 (Fedora 16.0.6-3.fc38)
  fedora:latest                 clang version 17.0.6 (Fedora 17.0.6-1.fc39)
  fedora:rawhide                clang version 17.0.6 (Fedora 17.0.6-1.fc40)
  opensuse/leap:latest          clang version 15.0.7
  opensuse/tumbleweed:latest    clang version 17.0.6
  ubuntu:focal                  clang version 10.0.0-4ubuntu1
  ubuntu:latest                 Ubuntu clang version 14.0.0-1ubuntu1.1
  ubuntu:rolling                Ubuntu clang version 16.0.6 (15)
  ubuntu:devel                  Ubuntu clang version 17.0.6 (3)

The only distribution that gets left behind is Debian Bullseye, as the
default version is 11.0.1; other distributions either have a newer version
than 13.0.1 or one older than the current minimum of 11.0.0.  Debian has
easy access to more recent LLVM versions through apt.llvm.org, so this is
not as much of a concern.  There are also the kernel.org LLVM toolchains,
which should work with distributions with glibc 2.28 and newer.

Another benefit of slimming up the number of supported versions of LLVM
for building the kernel is reducing the build capacity needed to support a
matrix that builds with each supported version, which allows a matrix to
reallocate the freed up build capacity towards something else, such as
more configuration combinations.

Link: https://lkml.kernel.org/r/20240125-bump-min-llvm-ver-to-13-0-1-v1-0-f5ff9bda41c5@kernel.org
Closes: https://github.com/ClangBuiltLinux/linux/issues/1975
Link: https://github.com/llvm/llvm-project/issues/38013
Link: https://github.com/llvm/llvm-project/commit/3203143f1356a4e4e3ada231156fc6da6e1a9f9d
Link: https://mirrors.edge.kernel.org/pub/tools/llvm/
Link: https://lkml.kernel.org/r/20240125-bump-min-llvm-ver-to-13-0-1-v1-1-f5ff9bda41c5@kernel.org
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: "Aneesh Kumar K.V (IBM)" <aneesh.kumar@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Borislav Petkov (AMD) <bp@alien8.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Conor Dooley <conor@kernel.org>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Cc: Nicholas Piggin <npiggin@gmail.com>
Cc: Nicolas Schier <nicolas@fjasle.eu>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2947a45', '2024-02-23', 'Nathan Chancellor', 'treewide: update LLVM Bugzilla links', 'treewide: update LLVM Bugzilla links

LLVM moved their issue tracker from their own Bugzilla instance to GitHub
issues.  While all of the links are still valid, they may not necessarily
show the most up to date information around the issues, as all updates
will occur on GitHub, not Bugzilla.

Another complication is that the Bugzilla issue number is not always the
same as the GitHub issue number.  Thankfully, LLVM maintains this mapping
through two shortlinks:

  https://llvm.org/bz<num> -> https://bugs.llvm.org/show_bug.cgi?id=<num>
  https://llvm.org/pr<num> -> https://github.com/llvm/llvm-project/issues/<mapped_num>

Switch all "https://bugs.llvm.org/show_bug.cgi?id=<num>" links to the
"https://llvm.org/pr<num>" shortlink so that the links show the most up to
date information.  Each migrated issue links back to the Bugzilla entry,
so there should be no loss of fidelity of information here.

Link: https://lkml.kernel.org/r/20240109-update-llvm-links-v1-3-eb09b59db071@kernel.org
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Fangrui Song <maskray@google.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andrii Nakryiko <andrii@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Mykola Lysenko <mykolal@fb.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '68fb3ca', '2024-02-16', 'Linus Torvalds', 'update workarounds for gcc "asm goto" issue', 'update workarounds for gcc "asm goto" issue

In commit 4356e9f841f7 ("work around gcc bugs with \'asm goto\' with
outputs") I did the gcc workaround unconditionally, because the cause of
the bad code generation wasn\'t entirely clear.

In the meantime, Jakub Jelinek debugged the issue, and has come up with
a fix in gcc [2], which also got backported to the still maintained
branches of gcc-11, gcc-12 and gcc-13.

Note that while the fix technically wasn\'t in the original gcc-14
branch, Jakub says:

 "while it is true that no GCC 14 snapshots until today (or whenever the
  fix will be committed) have the fix, for GCC trunk it is up to the
  distros to use the latest snapshot if they use it at all and would
  allow better testing of the kernel code without the workaround, so
  that if there are other issues they won\'t be discovered years later.
  Most userland code doesn\'t actually use asm goto with outputs..."

so we will consider gcc-14 to be fixed - if somebody is using gcc
snapshots of the gcc-14 before the fix, they should upgrade.

Note that while the bug goes back to gcc-11, in practice other gcc
changes seem to have effectively hidden it since gcc-12.1 as per a
bisect by Jakub.  So even a gcc-14 snapshot without the fix likely
doesn\'t show actual problems.

Also, make the default \'asm_goto_output()\' macro mark the asm as
volatile by hand, because of an unrelated gcc issue [1] where it doesn\'t
match the documented behavior ("asm goto is always volatile").

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=103979 [1]
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=113921 [2]
Link: https://lore.kernel.org/all/20240208220604.140859-1-seanjc@google.com/
Requested-by: Jakub Jelinek <jakub@redhat.com>
Cc: Uros Bizjak <ubizjak@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sean Christopherson <seanjc@google.com>
Cc: Andrew Pinski <quic_apinski@quicinc.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4356e9f', '2024-02-10', 'Linus Torvalds', 'work around gcc bugs with \'asm goto\' with outputs', 'work around gcc bugs with \'asm goto\' with outputs

We\'ve had issues with gcc and \'asm goto\' before, and we created a
\'asm_volatile_goto()\' macro for that in the past: see commits
3f0116c3238a ("compiler/gcc4: Add quirk for \'asm goto\' miscompilation
bug") and a9f180345f53 ("compiler/gcc4: Make quirk for
asm_volatile_goto() unconditional").

Then, much later, we ended up removing the workaround in commit
43c249ea0b1e ("compiler-gcc.h: remove ancient workaround for gcc PR
58670") because we no longer supported building the kernel with the
affected gcc versions, but we left the macro uses around.

Now, Sean Christopherson reports a new version of a very similar
problem, which is fixed by re-applying that ancient workaround.  But the
problem in question is limited to only the \'asm goto with outputs\'
cases, so instead of re-introducing the old workaround as-is, let\'s
rename and limit the workaround to just that much less common case.

It looks like there are at least two separate issues that all hit in
this area:

 (a) some versions of gcc don\'t mark the asm goto as \'volatile\' when it
     has outputs:

        https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98619
        https://gcc.gnu.org/bugzilla/show_bug.cgi?id=110420

     which is easy to work around by just adding the \'volatile\' by hand.

 (b) Internal compiler errors:

        https://gcc.gnu.org/bugzilla/show_bug.cgi?id=110422

     which are worked around by adding the extra empty \'asm\' as a
     barrier, as in the original workaround.

but the problem Sean sees may be a third thing since it involves bad
code generation (not an ICE) even with the manually added \'volatile\'.

but the same old workaround works for this case, even if this feels a
bit like voodoo programming and may only be hiding the issue.

Reported-and-tested-by: Sean Christopherson <seanjc@google.com>
Link: https://lore.kernel.org/all/20240208220604.140859-1-seanjc@google.com/
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Uros Bizjak <ubizjak@gmail.com>
Cc: Jakub Jelinek <jakub@redhat.com>
Cc: Andrew Pinski <quic_apinski@quicinc.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '90773aa', '2024-02-08', 'Arnd Bergmann', 'drm/xe: circumvent bogus stringop-overflow warning', 'drm/xe: circumvent bogus stringop-overflow warning

gcc-13 warns about an array overflow that it sees but that is
prevented by the "asid % NUM_PF_QUEUE" calculation:

drivers/gpu/drm/xe/xe_gt_pagefault.c: In function \'xe_guc_pagefault_handler\':
include/linux/fortify-string.h:57:33: error: writing 16 bytes into a region of size 0 [-Werror=stringop-overflow=]
include/linux/fortify-string.h:689:26: note: in expansion of macro \'__fortify_memcpy_chk\'
  689 | #define memcpy(p, q, s)  __fortify_memcpy_chk(p, q, s,                  \\
      |                          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/xe/xe_gt_pagefault.c:341:17: note: in expansion of macro \'memcpy\'
  341 |                 memcpy(pf_queue->data + pf_queue->tail, msg, len * sizeof(u32));
      |                 ^~~~~~
drivers/gpu/drm/xe/xe_gt_types.h:102:25: note: at offset [1144, 265324] into destination object \'tile\' of size 8

I found that rewriting the assignment using pointer addition rather than the
equivalent array index calculation prevents the warning, so use that instead.

I sent a bug report against gcc for the false positive warning.

Fixes: dd08ebf6c352 ("drm/xe: Introduce a new DRM driver for Intel GPUs")
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=113214
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20240103114819.2913937-1-arnd@kernel.org
(cherry picked from commit 774ef5dfc95578a9079426d5106076dcd59c4dfa)
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '774ef5d', '2024-02-03', 'Arnd Bergmann', 'drm/xe: circumvent bogus stringop-overflow warning', 'drm/xe: circumvent bogus stringop-overflow warning

gcc-13 warns about an array overflow that it sees but that is
prevented by the "asid % NUM_PF_QUEUE" calculation:

drivers/gpu/drm/xe/xe_gt_pagefault.c: In function \'xe_guc_pagefault_handler\':
include/linux/fortify-string.h:57:33: error: writing 16 bytes into a region of size 0 [-Werror=stringop-overflow=]
include/linux/fortify-string.h:689:26: note: in expansion of macro \'__fortify_memcpy_chk\'
  689 | #define memcpy(p, q, s)  __fortify_memcpy_chk(p, q, s,                  \\
      |                          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/xe/xe_gt_pagefault.c:341:17: note: in expansion of macro \'memcpy\'
  341 |                 memcpy(pf_queue->data + pf_queue->tail, msg, len * sizeof(u32));
      |                 ^~~~~~
drivers/gpu/drm/xe/xe_gt_types.h:102:25: note: at offset [1144, 265324] into destination object \'tile\' of size 8

I found that rewriting the assignment using pointer addition rather than the
equivalent array index calculation prevents the warning, so use that instead.

I sent a bug report against gcc for the false positive warning.

Fixes: dd08ebf6c352 ("drm/xe: Introduce a new DRM driver for Intel GPUs")
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=113214
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20240103114819.2913937-1-arnd@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'cda5f94', '2024-01-31', 'Masahiro Yamada', 'modpost: avoid using the alias attribute', 'modpost: avoid using the alias attribute

Aiden Leong reported modpost fails to build on macOS since commit
16a473f60edc ("modpost: inform compilers that fatal() never returns"):

  scripts/mod/modpost.c:93:21: error: aliases are not supported on darwin

Nathan\'s research indicates that Darwin seems to support weak aliases
at least [1]. Although the situation might be improved in future Clang
versions, we can achieve a similar outcome without relying on it.

This commit makes fatal() a macro of error() + exit(1) in modpost.h, as
compilers recognize that exit() never returns.

[1]: https://github.com/llvm/llvm-project/issues/71001

Fixes: 16a473f60edc ("modpost: inform compilers that fatal() never returns")
Reported-by: Aiden Leong <aiden.leong@aibsd.com>
Closes: https://lore.kernel.org/all/d9ac2960-6644-4a87-b5e4-4bfb6e0364a8@aibsd.com/
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '8deb05c', '2024-01-24', 'Kees Cook', 'smb: Work around Clang __bdos() type confusion', 'smb: Work around Clang __bdos() type confusion

Recent versions of Clang gets confused about the possible size of the
"user" allocation, and CONFIG_FORTIFY_SOURCE ends up emitting a
warning[1]:

repro.c:126:4: warning: call to \'__write_overflow_field\' declared with \'warning\' attribute: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
  126 |                         __write_overflow_field(p_size_field, size);
      |                         ^

for this memset():

        int len;
        __le16 *user;
	...
        len = ses->user_name ? strlen(ses->user_name) : 0;
        user = kmalloc(2 + (len * 2), GFP_KERNEL);
	...
	if (len) {
		...
	} else {
		memset(user, \'\\0\', 2);
	}

While Clang works on this bug[2], switch to using a direct assignment,
which avoids memset() entirely which both simplifies the code and silences
the false positive warning. (Making "len" size_t also silences the
warning, but the direct assignment seems better.)

Reported-by: Nathan Chancellor <nathan@kernel.org>
Closes: https://github.com/ClangBuiltLinux/linux/issues/1966 [1]
Link: https://github.com/llvm/llvm-project/issues/77813 [2]
Cc: Steve French <sfrench@samba.org>
Cc: Paulo Alcantara <pc@manguebit.com>
Cc: Ronnie Sahlberg <ronniesahlberg@gmail.com>
Cc: Shyam Prasad N <sprasad@microsoft.com>
Cc: Tom Talpey <tom@talpey.com>
Cc: linux-cifs@vger.kernel.org
Cc: llvm@lists.linux.dev
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Steve French <stfrench@microsoft.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '021d234', '2024-01-23', 'Wende Tan', 'RISC-V: build: Allow LTO to be selected', 'RISC-V: build: Allow LTO to be selected

Allow LTO to be selected for RISC-V, only when LLD >= 14, since there is
an issue [1] in prior LLD versions that prevents LLD to generate proper
machine code for RISC-V when writing `nop`s.

To avoid boot failures in QEMU [2], \'-mattr=+c\' and \'-mattr=+relax\'
need to be passed via \'-mllvm\' to ld.lld, as there appears to be an
issue with LLVM\'s target-features and LTO [3], which can result in
incorrect relocations to branch targets [4]. Once this is fixed in LLVM,
it can be made conditional on affected ld.lld versions.

Disable LTO for arch/riscv/kernel/pi, as llvm-objcopy expects an ELF
object file when manipulating the files in that subfolder, rather than
LLVM bitcode.

[1] https://github.com/llvm/llvm-project/issues/50505, resolved by LLVM
    commit e63455d5e0e5 ("[MC] Use local MCSubtargetInfo in writeNops")
[2] https://github.com/ClangBuiltLinux/linux/issues/1942
[3] https://github.com/llvm/llvm-project/issues/59350
[4] https://github.com/llvm/llvm-project/issues/65090

Tested-by: Wende Tan <twd2.me@gmail.com>
Signed-off-by: Wende Tan <twd2.me@gmail.com>
Co-developed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Link: https://lore.kernel.org/r/20231017-riscv-lto-v4-1-e7810b24e805@kernel.org
Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '61a40c1', '2024-01-05', 'Alexei Starovoitov', 'Merge branch \'s390-bpf-fix-gotol-with-large-offsets\'', 'Merge branch \'s390-bpf-fix-gotol-with-large-offsets\'

Ilya Leoshkevich says:

====================
s390/bpf: Fix gotol with large offsets

Hi,

While looking at a pyperf180 failure on s390x (must be related to [1],
I\'m not done with the investigation yet) I noticed that I have
unfortunately messed up the gotol implementation. Patch 1 is the fix,
patch 2 is a small test infrastructure tweak, and patch 3 adds a
test.

[1] https://github.com/llvm/llvm-project/issues/55669

Best regards,
Ilya
====================

Link: https://lore.kernel.org/r/20240102193531.3169422-1-iii@linux.ibm.com
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '588a90a', '2023-11-17', 'Herbert Xu', 'crypto: ccree - Silence gcc format-truncation false positive warnings', 'crypto: ccree - Silence gcc format-truncation false positive warnings

The heuristics used by gcc triggers false positive truncation
warnings in hifn_alg_alloc.  The warning triggered by the strings
here are clearly false positives (see
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=95755).

Add checks on snprintf calls to silence these warnings, including
the one for cra_driver_name even though it does not currently trigger
a gcc warning.

Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ca06ef9', '2023-10-20', 'Herbert Xu', 'crypto: hifn_795x - Silence gcc format-truncation false positive warnings', 'crypto: hifn_795x - Silence gcc format-truncation false positive warnings

The heuristics used by gcc triggers false positive truncation
warnings in hifn_alg_alloc.  The warning triggered by the strings
here are clearly false positives (see
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=95755).

Add checks on snprintf calls to silence these warnings, including
the one for cra_driver_name even though it does not currently trigger
a gcc warning.

Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e29aad0', '2023-10-11', 'Uros Bizjak', 'x86/percpu: Disable named address spaces for KASAN', 'x86/percpu: Disable named address spaces for KASAN

-fsanitize=kernel-address (KASAN) is at the moment incompatible
with named address spaces - see GCC PR sanitizer/111736:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=111736

GCC is doing a KASAN check on a percpu address which it shouldn\'t do,
and didn\'t used to do because we did the access using inline asm.

But now that GCC does the accesses as normal (albeit special address
space) memory accesses, the KASAN code triggers on them too, and it
all goes to hell in a handbasket very quickly.

Those percpu accessor functions need to disable any KASAN
checking or other sanitizer checking. Not on the percpu address,
because that\'s not a "real" address, it\'s obviously just the offset
from the segment register.

And GCC should probably not have generated such code in the first
place, so arguably this is a bug with -fsanitize=kernel-address.

The patch also removes a stale dependency on CONFIG_SMP.

Reported-by: kernel test robot <oliver.sang@intel.com>
Signed-off-by: Uros Bizjak <ubizjak@gmail.com>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Brian Gerst <brgerst@gmail.com>
Cc: Denys Vlasenko <dvlasenk@redhat.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Link: https://lore.kernel.org/r/20231009151409.53656-1-ubizjak@gmail.com

Closes: https://lore.kernel.org/oe-lkp/202310071301.a5113890-oliver.sang@intel.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '89775a2', '2023-08-31', 'Nathan Chancellor', 'lib/Kconfig.debug: Restrict DEBUG_INFO_SPLIT for RISC-V', 'lib/Kconfig.debug: Restrict DEBUG_INFO_SPLIT for RISC-V

When building for ARCH=riscv using LLVM < 14, there is an error with
CONFIG_DEBUG_INFO_SPLIT=y:

  error: A dwo section may not contain relocations

This was worked around in LLVM 15 by disallowing \'-gsplit-dwarf\' with
\'-mrelax\' (the default), so CONFIG_DEBUG_INFO_SPLIT is not selectable
with newer versions of LLVM:

  $ clang --target=riscv64-linux-gnu -gsplit-dwarf -c -o /dev/null -x c /dev/null
  clang: error: -gsplit-dwarf is unsupported with RISC-V linker relaxation (-mrelax)

GCC silently had a similar issue that was resolved with GCC 12.x.
Restrict CONFIG_DEBUG_INFO_SPLIT for RISC-V when using LLVM or GCC <
12.x to avoid these known issues.

Link: https://github.com/ClangBuiltLinux/linux/issues/1914
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99090
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/all/202308090204.9yZffBWo-lkp@intel.com/
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/r/20230816-riscv-debug_info_split-v1-1-d1019d6ccc11@kernel.org
Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ae7936d', '2023-08-16', 'Nick Desaulniers', 'powerpc/inst: add PPC_TLBILX_LPID', 'powerpc/inst: add PPC_TLBILX_LPID

Clang didn\'t recognize the instruction tlbilxlpid. This was fixed in
clang-18 [0] then backported to clang-17 [1].  To support clang-16 and
older, rather than using that instruction bare in inline asm, add it to
ppc-opcode.h and use that macro as is done elsewhere for other
instructions.

Link: https://github.com/ClangBuiltLinux/linux/issues/1891
Link: https://github.com/llvm/llvm-project/issues/64080
Link: https://github.com/llvm/llvm-project/commit/53648ac1d0c953ae6d008864dd2eddb437a92468 [0]
Link: https://github.com/llvm/llvm-project-release-prs/commit/0af7e5e54a8c7ac665773ac1ada328713e8338f5 [1]
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/llvm/202307211945.TSPcyOhh-lkp@intel.com/
Suggested-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://msgid.link/20230803-ppc_tlbilxlpid-v3-1-ca84739bfd73@google.com

');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7a0fd5e', '2023-08-16', 'Marco Elver', 'compiler_types: Introduce the Clang __preserve_most function attribute', 'compiler_types: Introduce the Clang __preserve_most function attribute

[1]: "On X86-64 and AArch64 targets, this attribute changes the calling
convention of a function. The preserve_most calling convention attempts
to make the code in the caller as unintrusive as possible. This
convention behaves identically to the C calling convention on how
arguments and return values are passed, but it uses a different set of
caller/callee-saved registers. This alleviates the burden of saving and
recovering a large register set before and after the call in the caller.
If the arguments are passed in callee-saved registers, then they will be
preserved by the callee across the call. This doesn\'t apply for values
returned in callee-saved registers.

 * On X86-64 the callee preserves all general purpose registers, except
   for R11. R11 can be used as a scratch register. Floating-point
   registers (XMMs/YMMs) are not preserved and need to be saved by the
   caller.

 * On AArch64 the callee preserve all general purpose registers, except
   x0-X8 and X16-X18."

[1] https://clang.llvm.org/docs/AttributeReference.html#preserve-most

Introduce the attribute to compiler_types.h as __preserve_most.

Use of this attribute results in better code generation for calls to
very rarely called functions, such as error-reporting functions, or
rarely executed slow paths.

Beware that the attribute conflicts with instrumentation calls inserted
on function entry which do not use __preserve_most themselves. Notably,
function tracing which assumes the normal C calling convention for the
given architecture.  Where the attribute is supported, __preserve_most
will imply notrace. It is recommended to restrict use of the attribute
to functions that should or already disable tracing.

Note: The additional preprocessor check against architecture should not
be necessary if __has_attribute() only returns true where supported;
also see https://github.com/ClangBuiltLinux/linux/issues/1908. But until
__has_attribute() does the right thing, we also guard by known-supported
architectures to avoid build warnings on other architectures.

The attribute may be supported by a future GCC version (see
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=110899).

Signed-off-by: Marco Elver <elver@google.com>
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: "Steven Rostedt (Google)" <rostedt@goodmis.org>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Link: https://lore.kernel.org/r/20230811151847.1594958-1-elver@google.com
Signed-off-by: Kees Cook <keescook@chromium.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '71c8f9c', '2023-07-27', 'Arnd Bergmann', 'mtd: spi-nor: avoid holes in struct spi_mem_op', 'mtd: spi-nor: avoid holes in struct spi_mem_op

gcc gets confused when -ftrivial-auto-var-init=pattern is used on sparse
bit fields such as \'struct spi_mem_op\', which caused the previous false
positive warning about an uninitialized variable:

drivers/mtd/spi-nor/spansion.c: error: \'op\' is used uninitialized [-Werror=uninitialized]

In fact, the variable is fully initialized and gcc does not see it being
used, so the warning is entirely bogus. The problem appears to be
a misoptimization in the initialization of single bit fields when the
rest of the bytes are not initialized.

A previous workaround added another initialization, which ended up
shutting up the warning in spansion.c, though it apparently still happens
in other files as reported by Peter Foley in the gcc bugzilla. The
workaround of adding a fake initialization seems particularly bad
because it would set values that can never be correct but prevent the
compiler from warning about actually missing initializations.

Revert the broken workaround and instead pad the structure to only
have bitfields that add up to full bytes, which should avoid this
behavior in all drivers.

I also filed a new bug against gcc with what I found, so this can
hopefully be addressed in future gcc releases. At the moment, only
gcc-12 and gcc-13 are affected.

Cc: Peter Foley <pefoley2@pefoley.com>
Cc: Pedro Falcato <pedro.falcato@gmail.com>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=110743
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=108402
Link: https://godbolt.org/z/efMMsG1Kx
Fixes: 420c4495b5e56 ("mtd: spi-nor: spansion: make sure local struct does not contain garbage")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Mark Brown <broonie@kernel.org>
Acked-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Link: https://lore.kernel.org/linux-mtd/20230719190045.4007391-1-arnd@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c40e60f', '2023-07-24', 'Borislav Petkov (AMD)', 'kbuild: Enable -Wenum-conversion by default', 'kbuild: Enable -Wenum-conversion by default

This diagnostic checks whether there is a type mismatch when
converting enums (assign an enum of type A to an enum of type B, for
example) and it caught a legit issue recently. The reason it didn\'t show
is because that warning is enabled only with -Wextra with GCC. Clang,
however, enables it by default.

GCC folks were considering enabling it by default but it was too noisy
back then:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=78736

Now that due to clang all those warnings have been fixed, enable it with
GCC too.

allmodconfig tests done with: x86, arm{,64}, powerpc{,64}, riscv
crossbuilds.

Signed-off-by: Borislav Petkov (AMD) <bp@alien8.de>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '8bcf314', '2023-07-09', 'Rahul Rameshbabu', 'HID: nvidia-shield: Pack inner/related declarations in HOSTCMD reports', 'HID: nvidia-shield: Pack inner/related declarations in HOSTCMD reports

Match alignment information in composite type declarations used by packed
HOSTCMD report structures. Compiler packing attribute is not recursive for
inner declarations. Mismatched alignment information can cause undefined
behavior in code generated for accessing composite type members. struct
pointers passed to thunderstrike_parse_board_info_payload and
thunderstrike_parse_haptics_payload are an example of this being
potentially problematic since alignment information from the packed HOSTCMD
report is lost.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202307041500.6bKn7nCl-lkp@intel.com/
Link: https://github.com/llvm/llvm-project/issues/55520#issuecomment-1128617570
Link: https://gcc.gnu.org/onlinedocs/gcc-13.1.0/gcc/Common-Type-Attributes.html#index-packed-type-attribute
Signed-off-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Link: https://lore.kernel.org/r/20230705060414.581468-1-rrameshbabu@nvidia.com
Signed-off-by: Benjamin Tissoires <bentiss@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd24da1f', '2023-06-19', 'Naveen N Rao', 'powerpc/ftrace: Disable ftrace on ppc32 if using clang', 'powerpc/ftrace: Disable ftrace on ppc32 if using clang

Ftrace on ppc32 expects a three instruction sequence at the beginning of
each function when specifying -pg:
	mflr	r0
	stw	r0,4(r1)
	bl	_mcount

This is the case with all supported versions of gcc. Clang however emits
a branch to _mcount after the function prologue, similar to the pre
-mprofile-kernel ABI on ppc64. This is not supported.

Disable ftrace on ppc32 if using clang for now. This can be re-enabled
later if clang picks up support for -fpatchable-function-entry on ppc32.

Signed-off-by: Naveen N Rao <naveen@kernel.org>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/llvm/llvm-project/issues/63220
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://msgid.link/20230609034501.407971-1-naveen@kernel.org

');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6d074ce', '2023-05-31', 'Bart Van Assche', 'scsi: stex: Fix gcc 13 warnings', 'scsi: stex: Fix gcc 13 warnings

gcc 13 may assign another type to enumeration constants than gcc 12. Split
the large enum at the top of source file stex.c such that the type of the
constants used in time expressions is changed back to the same type chosen
by gcc 12. This patch suppresses compiler warnings like this one:

In file included from ./include/linux/bitops.h:7,
                 from ./include/linux/kernel.h:22,
                 from drivers/scsi/stex.c:13:
drivers/scsi/stex.c: In function ‘stex_common_handshake’:
./include/linux/typecheck.h:12:25: error: comparison of distinct pointer types lacks a cast [-Werror]
   12 |         (void)(&__dummy == &__dummy2); \\
      |                         ^~
./include/linux/jiffies.h:106:10: note: in expansion of macro ‘typecheck’
  106 |          typecheck(unsigned long, b) && \\
      |          ^~~~~~~~~
drivers/scsi/stex.c:1035:29: note: in expansion of macro ‘time_after’
 1035 |                         if (time_after(jiffies, before + MU_MAX_DELAY * HZ)) {
      |                             ^~~~~~~~~~

See also https://gcc.gnu.org/bugzilla/show_bug.cgi?id=107405.

Cc: stable@vger.kernel.org
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org> # build-tested
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
Link: https://lore.kernel.org/r/20230529195034.3077-1-bvanassche@acm.org
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'dd06e72', '2023-05-31', 'Kees Cook', 'Compiler Attributes: Add __counted_by macro', 'Compiler Attributes: Add __counted_by macro

In an effort to annotate all flexible array members with their run-time
size information, the "element_count" attribute is being introduced by
Clang[1] and GCC[2] in future releases. This annotation will provide
the CONFIG_UBSAN_BOUNDS and CONFIG_FORTIFY_SOURCE features the ability
to perform run-time bounds checking on otherwise unknown-size flexible
arrays.

Even though the attribute is under development, we can start the
annotation process in the kernel. This requires defining a macro for
it, even if we have to change the name of the actual attribute later.
Since it is likely that this attribute may change its name to "counted_by"
in the future (to better align with a future total bytes "sized_by"
attribute), name the wrapper macro "__counted_by", which also reads more
clearly (and concisely) in structure definitions.

[1] https://reviews.llvm.org/D148381
[2] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=108896

Cc: Bill Wendling <morbo@google.com>
Cc: Qing Zhao <qing.zhao@oracle.com>
Cc: Gustavo A. R. Silva <gustavoars@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Tom Rix <trix@redhat.com>
Cc: llvm@lists.linux.dev
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Miguel Ojeda <ojeda@kernel.org>
Link: https://lore.kernel.org/r/20230517190841.gonna.796-kees@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '09e8c25', '2023-05-24', 'David Howells', 'block: Fix bio_flagged() so that gcc can better optimise it', 'block: Fix bio_flagged() so that gcc can better optimise it

Fix bio_flagged() so that multiple instances of it, such as:

	if (bio_flagged(bio, BIO_PAGE_REFFED) ||
	    bio_flagged(bio, BIO_PAGE_PINNED))

can be combined by the gcc optimiser into a single test in assembly
(arguably, this is a compiler optimisation issue[1]).

The missed optimisation stems from bio_flagged() comparing the result of
the bitwise-AND to zero.  This results in an out-of-line bio_release_page()
being compiled to something like:

   <+0>:     mov    0x14(%rdi),%eax
   <+3>:     test   $0x1,%al
   <+5>:     jne    0xffffffff816dac53 <bio_release_pages+11>
   <+7>:     test   $0x2,%al
   <+9>:     je     0xffffffff816dac5c <bio_release_pages+20>
   <+11>:    movzbl %sil,%esi
   <+15>:    jmp    0xffffffff816daba1 <__bio_release_pages>
   <+20>:    jmp    0xffffffff81d0b800 <__x86_return_thunk>

However, the test is superfluous as the return type is bool.  Removing it
results in:

   <+0>:     testb  $0x3,0x14(%rdi)
   <+4>:     je     0xffffffff816e4af4 <bio_release_pages+15>
   <+6>:     movzbl %sil,%esi
   <+10>:    jmp    0xffffffff816dab7c <__bio_release_pages>
   <+15>:    jmp    0xffffffff81d0b7c0 <__x86_return_thunk>

instead.

Also, the MOVZBL instruction looks unnecessary[2] - I think it\'s just
\'re-booling\' the mark_dirty parameter.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: John Hubbard <jhubbard@nvidia.com>
cc: Jens Axboe <axboe@kernel.dk>
cc: linux-block@vger.kernel.org
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=108370 [1]
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=108371 [2]
Link: https://lore.kernel.org/r/167391056756.2311931.356007731815807265.stgit@warthog.procyon.org.uk/ # v6
Reviewed-by: Christian Brauner <brauner@kernel.org>
Reviewed-by: Jan Kara <jack@suse.cz>
Link: https://lore.kernel.org/r/20230522205744.2825689-3-dhowells@redhat.com
Signed-off-by: Jens Axboe <axboe@kernel.dk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '514ca14', '2023-05-16', 'ndesaulniers@google.com', 'start_kernel: Add __no_stack_protector function attribute', 'start_kernel: Add __no_stack_protector function attribute

Back during the discussion of
commit a9a3ed1eff36 ("x86: Fix early boot crash on gcc-10, third try")
we discussed the need for a function attribute to control the omission
of stack protectors on a per-function basis; at the time Clang had
support for no_stack_protector but GCC did not. This was fixed in
gcc-11. Now that the function attribute is available, let\'s start using
it.

Callers of boot_init_stack_canary need to use this function attribute
unless they\'re compiled with -fno-stack-protector, otherwise the canary
stored in the stack slot of the caller will differ upon the call to
boot_init_stack_canary. This will lead to a call to __stack_chk_fail()
then panic.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94722
Link: https://lore.kernel.org/all/20200316130414.GC12561@hirez.programming.kicks-ass.net/
Tested-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
Acked-by: Miguel Ojeda <ojeda@kernel.org>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/r/20230412-no_stackp-v2-1-116f9fe4bbe7@google.com
Signed-off-by: Josh Poimboeuf <jpoimboe@kernel.org>

Signed-off-by: ndesaulniers@google.com <ndesaulniers@google.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd966c3c', '2023-04-20', 'Andrea Righi', 'rust: allow to use INIT_STACK_ALL_ZERO', 'rust: allow to use INIT_STACK_ALL_ZERO

With CONFIG_INIT_STACK_ALL_ZERO enabled, bindgen passes
-ftrivial-auto-var-init=zero to clang, that triggers the following
error:

 error: \'-ftrivial-auto-var-init=zero\' hasn\'t been enabled; enable it at your own peril for benchmarking purpose only with \'-enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang\'

However, this additional option that is currently required by clang is
deprecated since clang-16 and going to be removed in the future,
likely with clang-18.

So, make sure bindgen is using this extra option if the major version of
the libclang used by bindgen is < 16.

In this way we can enable CONFIG_INIT_STACK_ALL_ZERO with CONFIG_RUST
without triggering any build error.

Link: https://github.com/llvm/llvm-project/issues/44842
Link: https://github.com/llvm/llvm-project/blob/llvmorg-16.0.0-rc2/clang/docs/ReleaseNotes.rst#deprecated-compiler-flags
Signed-off-by: Andrea Righi <andrea.righi@canonical.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
[Changed to < 16, added link and reworded]
Signed-off-by: Miguel Ojeda <ojeda@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '9df3f50', '2023-04-13', 'Mark Rutland', 'arm64: avoid redundant PAC stripping in __builtin_return_address()', 'arm64: avoid redundant PAC stripping in __builtin_return_address()

In old versions of GCC and Clang, __builtin_return_address() did not
strip the PAC. This was not the behaviour we desired, and so we wrapped
this with code to strip the PAC in commit:

  689eae42afd7a916 ("arm64: mask PAC bits of __builtin_return_address")

Since then, both GCC and Clang decided that __builtin_return_address()
*should* strip the PAC, and the existing behaviour was a bug.

GCC was fixed in 11.1.0, with those fixes backported to 10.2.0, 9.4.0,
8.5.0, but not earlier:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94891

Clang was fixed in 12.0.0, though this was not backported:

  https://reviews.llvm.org/D75044

When using a compiler whose __builtin_return_address() strips the PAC,
our wrapper to strip the PAC is redundant. Similarly, when pointer
authentication is not in use within the kernel pointers will not have a
PAC, and so there\'s no point stripping those pointers.

To avoid this redundant work, this patch updates the
__builtin_return_address() wrapper to only be used when in-kernel
pointer authentication is configured and the compiler\'s
__builtin_return_address() does not strip the PAC.

This is a cleanup/optimization, and not a fix that requires backporting.
Stripping a PAC should be an idempotent operation, and so redundantly
stripping the PAC is not harmful.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Kristina Martsenko <kristina.martsenko@arm.com>
Cc: Will Deacon <will@kernel.org>
Link: https://lore.kernel.org/r/20230412160134.306148-2-mark.rutland@arm.com
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a3046a6', '2023-04-04', 'David Gow', 'um: Only disable SSE on clang to work around old GCC bugs', 'um: Only disable SSE on clang to work around old GCC bugs

As part of the Rust support for UML, we disable SSE (and similar flags)
to match the normal x86 builds. This both makes sense (we ideally want a
similar configuration to x86), and works around a crash bug with SSE
generation under Rust with LLVM.

However, this breaks compiling stdlib.h under gcc < 11, as the x86_64
ABI requires floating-point return values be stored in an SSE register.
gcc 11 fixes this by only doing register allocation when a function is
actually used, and since we never use atof(), it shouldn\'t be a problem:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99652

Nevertheless, only disable SSE on clang setups, as that\'s a simple way
of working around everyone\'s bugs.

Fixes: 884981867947 ("rust: arch/um: Disable FP/SIMD instruction to match x86")
Reported-by: Roberto Sassu <roberto.sassu@huaweicloud.com>
Link: https://lore.kernel.org/linux-um/6df2ecef9011d85654a82acd607fdcbc93ad593c.camel@huaweicloud.com/
Tested-by: Roberto Sassu <roberto.sassu@huaweicloud.com>
Tested-by: SeongJae Park <sj@kernel.org>
Signed-off-by: David Gow <davidgow@google.com>
Reviewed-by: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
Tested-by: Arthur Grillo <arthurgrillo@riseup.net>
Signed-off-by: Richard Weinberger <richard@nod.at>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '9af0f55', '2023-04-01', 'James Hilliard', 'selftests/bpf: Fix conflicts with built-in functions in bench_local_storage_create', 'selftests/bpf: Fix conflicts with built-in functions in bench_local_storage_create

The fork function in gcc is considered a built in function due to
being used by libgcov when building with gnu extensions.

Rename fork to sched_process_fork to prevent this conflict.

See details:
https://github.com/gcc-mirror/gcc/commit/d1c38823924506d389ca58d02926ace21bdf82fa
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82457

Fixes the following error:

In file included from progs/bench_local_storage_create.c:6:
progs/bench_local_storage_create.c:43:14: error: conflicting types for
built-in function \'fork\'; expected \'int(void)\'
[-Werror=builtin-declaration-mismatch]
   43 | int BPF_PROG(fork, struct task_struct *parent, struct
task_struct *child)
      |              ^~~~

Fixes: cbe9d93d58b1 ("selftests/bpf: Add bench for task storage creation")
Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
Signed-off-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/bpf/20230331075848.1642814-1-james.hilliard1@gmail.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '51287dc', '2023-03-03', 'Marco Elver', 'kasan: emit different calls for instrumentable memintrinsics', 'kasan: emit different calls for instrumentable memintrinsics

Clang 15 provides an option to prefix memcpy/memset/memmove calls with
__asan_/__hwasan_ in instrumented functions:
https://reviews.llvm.org/D122724

GCC will add support in future:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=108777

Use it to regain KASAN instrumentation of memcpy/memset/memmove on
architectures that require noinstr to be really free from instrumented
mem*() functions (all GENERIC_ENTRY architectures).

Link: https://lkml.kernel.org/r/20230224085942.1791837-1-elver@google.com
Fixes: 69d4c0d32186 ("entry, kasan, x86: Disallow overriding mem*() functions")
Signed-off-by: Marco Elver <elver@google.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Reviewed-by: Andrey Konovalov <andreyknvl@gmail.com>
Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
Tested-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Alexander Potapenko <glider@google.com>
Cc: Andrey Ryabinin <ryabinin.a.a@gmail.com>
Cc: Borislav Petkov (AMD) <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Jakub Jelinek <jakub@redhat.com>
Cc: kasan-dev@googlegroups.com
Cc: Kees Cook <keescook@chromium.org>
Cc: Linux Kernel Functional Testing <lkft@linaro.org>
Cc: Nathan Chancellor <nathan@kernel.org> # build only
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nicolas Schier <nicolas@fjasle.eu>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1a2c73f', '2023-03-01', 'Jiaxun Yang', 'MIPS: Workaround clang inline compat branch issue', 'MIPS: Workaround clang inline compat branch issue

Clang is unable to handle the situation that a chunk of inline
assembly ends with a compat branch instruction and then compiler
generates another control transfer instruction immediately after
this compat branch. The later instruction will end up in forbidden
slot and cause exception.

Workaround by add a option to control the use of compact branch.
Currently it\'s selected by CC_IS_CLANG and hopefully we can change
it to a version check in future if clang manages to fix it.

Fix boot on boston board.

Link: https://github.com/llvm/llvm-project/issues/61045
Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Acked-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2508708', '2023-02-27', 'Michael Karcher', 'sh: intc: Avoid spurious sizeof-pointer-div warning', 'sh: intc: Avoid spurious sizeof-pointer-div warning

GCC warns about the pattern sizeof(void*)/sizeof(void), as it looks like
the abuse of a pattern to calculate the array size. This pattern appears
in the unevaluated part of the ternary operator in _INTC_ARRAY if the
parameter is NULL.

The replacement uses an alternate approach to return 0 in case of NULL
which does not generate the pattern sizeof(void*)/sizeof(void), but still
emits the warning if _INTC_ARRAY is called with a nonarray parameter.

This patch is required for successful compilation with -Werror enabled.

The idea to use _Generic for type distinction is taken from Comment #7
in https://gcc.gnu.org/bugzilla/show_bug.cgi?id=108483 by Jakub Jelinek

Signed-off-by: Michael Karcher <kernel@mkarcher.dialup.fu-berlin.de>
Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested
Link: https://lore.kernel.org/r/619fa552-c988-35e5-b1d7-fe256c46a272@mkarcher.dialup.fu-berlin.de
Signed-off-by: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1a30a6b', '2023-02-16', 'Kees Cook', 'wifi: brcmfmac: p2p: Introduce generic flexible array frame member', 'wifi: brcmfmac: p2p: Introduce generic flexible array frame member

Silence run-time memcpy() false positive warning when processing
management frames:

  memcpy: detected field-spanning write (size 27) of single field "&mgmt_frame->u" at drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c:1469 (size 26)

Due to this (soon to be fixed) GCC bug[1], FORTIFY_SOURCE (via
__builtin_dynamic_object_size) doesn\'t recognize that the union may end
with a flexible array, and returns "26" (the fixed size of the union),
rather than the remaining size of the allocation. Add an explicit
flexible array member and set it as the destination here, so that we
get the correct coverage for the memcpy().

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101832

Reported-by: Ard Biesheuvel <ardb@kernel.org>
Cc: Arend van Spriel <aspriel@gmail.com>
Cc: Franky Lin <franky.lin@broadcom.com>
Cc: Hante Meuleman <hante.meuleman@broadcom.com>
Cc: Kalle Valo <kvalo@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Darrick J. Wong" <djwong@kernel.org>
Cc: Colin Ian King <colin.i.king@gmail.com>
Cc: Brian Henriquez <brian.henriquez@cypress.com>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: SHA-cyfmac-dev-list@infineon.com
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20230215224110.never.022-kees@kernel.org
[rename \'frame\' to \'body\']
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '8849818', '2023-02-11', 'David Gow', 'rust: arch/um: Disable FP/SIMD instruction to match x86', 'rust: arch/um: Disable FP/SIMD instruction to match x86

The kernel disables all SSE and similar FP/SIMD instructions on
x86-based architectures (partly because we shouldn\'t be using floats in
the kernel, and partly to avoid the need for stack alignment, see:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=53383 )

UML does not do the same thing, which isn\'t in itself a problem, but
does add to the list of differences between UML and "normal" x86 builds.

In addition, there was a crash bug with LLVM < 15 / rustc < 1.65 when
building with SSE, so disabling it fixes rust builds with earlier
compiler versions, see:
https://github.com/Rust-for-Linux/linux/pull/881

Signed-off-by: David Gow <davidgow@google.com>
Reviewed-by: Sergio González Collado <sergio.collado@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '78f7a3f', '2023-02-09', 'Eric Biggers', 'randstruct: disable Clang 15 support', 'randstruct: disable Clang 15 support

The randstruct support released in Clang 15 is unsafe to use due to a
bug that can cause miscompilations: "-frandomize-layout-seed
inconsistently randomizes all-function-pointers structs"
(https://github.com/llvm/llvm-project/issues/60349).  It has been fixed
on the Clang 16 release branch, so add a Clang version check.

Fixes: 035f7f87b729 ("randstruct: Enable Clang support")
Cc: stable@vger.kernel.org
Signed-off-by: Eric Biggers <ebiggers@google.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Bill Wendling <morbo@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20230208065133.220589-1-ebiggers@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5a6b64a', '2023-02-03', 'Sam James', 'gcc-plugins: drop -std=gnu++11 to fix GCC 13 build', 'gcc-plugins: drop -std=gnu++11 to fix GCC 13 build

The latest GCC 13 snapshot (13.0.1 20230129) gives the following:
```
cc1: error: cannot load plugin ./scripts/gcc-plugins/randomize_layout_plugin.so
 :./scripts/gcc-plugins/randomize_layout_plugin.so: undefined symbol: tree_code_type
```

This ends up being because of https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=b0241ce6e37031
upstream in GCC which changes the visibility of some types used by the kernel\'s
plugin infrastructure like tree_code_type.

After discussion with the GCC folks, we found that the kernel needs to be building
plugins with the same flags used to build GCC - and GCC defaults to gnu++17
right now. The minimum GCC version needed to build the kernel is GCC 5.1
and GCC 5.1 already defaults to gnu++14 anyway, so just drop the flag, as
all GCCs that could be used to build GCC already default to an acceptable
version which was >= the version we forced via flags until now.

Bug: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=108634
Signed-off-by: Sam James <sam@gentoo.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20230201230009.2252783-1-sam@gentoo.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '16a738f', '2023-01-28', 'Paulo Miguel Almeida', 'i915/gvt: Replace one-element array with flexible-array member', 'i915/gvt: Replace one-element array with flexible-array member

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in struct gvt_firmware_header and refactor the
rest of the code accordingly.

Additionally, previous implementation was allocating 8 bytes more than
required to represent firmware_header + cfg_space data + mmio data.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

To make reviewing this patch easier, I\'m pasting before/after struct
sizes.

pahole -C gvt_firmware_header before/drivers/gpu/drm/i915/gvt/firmware.o
struct gvt_firmware_header {
	u64                        magic;                /*     0     8 */
	u32                        crc32;                /*     8     4 */
	u32                        version;              /*    12     4 */
	u64                        cfg_space_size;       /*    16     8 */
	u64                        cfg_space_offset;     /*    24     8 */
	u64                        mmio_size;            /*    32     8 */
	u64                        mmio_offset;          /*    40     8 */
	unsigned char              data[1];              /*    48     1 */

	/* size: 56, cachelines: 1, members: 8 */
	/* padding: 7 */
	/* last cacheline: 56 bytes */
};

pahole -C gvt_firmware_header after/drivers/gpu/drm/i915/gvt/firmware.o
struct gvt_firmware_header {
	u64                        magic;                /*     0     8 */
	u32                        crc32;                /*     8     4 */
	u32                        version;              /*    12     4 */
	u64                        cfg_space_size;       /*    16     8 */
	u64                        cfg_space_offset;     /*    24     8 */
	u64                        mmio_size;            /*    32     8 */
	u64                        mmio_offset;          /*    40     8 */
	unsigned char              data[];               /*    48     0 */

	/* size: 48, cachelines: 1, members: 8 */
	/* last cacheline: 48 bytes */
};

As you can see the additional byte of the fake-flexible array (data[1])
forced the compiler to pad the struct but those bytes aren\'t actually used
as first & last bytes (of both cfg_space and mmio) are controlled by the
<>_size and <>_offset members present in the gvt_firmware_header struct.

Link: https://github.com/KSPP/linux/issues/79
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]
Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/Y6Eu2604cqtryP4g@mail.google.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '87c7ee6', '2023-01-26', 'Masahiro Yamada', 'scripts: handle BrokenPipeError for python scripts', 'scripts: handle BrokenPipeError for python scripts

In the follow-up of commit fb3041d61f68 ("kbuild: fix SIGPIPE error
message for AR=gcc-ar and AR=llvm-ar"), Kees Cook pointed out that
tools should _not_ catch their own SIGPIPEs [1] [2].

Based on his feedback, LLVM was fixed [3].

However, Python\'s default behavior is to show noisy bracktrace when
SIGPIPE is sent. So, scripts written in Python are basically in the
same situation as the buggy llvm tools.

Example:

  $ make -s allnoconfig
  $ make -s allmodconfig
  $ scripts/diffconfig .config.old .config | head -n1
  -ALIX n
  Traceback (most recent call last):
    File "/home/masahiro/linux/scripts/diffconfig", line 132, in <module>
      main()
    File "/home/masahiro/linux/scripts/diffconfig", line 130, in main
      print_config("+", config, None, b[config])
    File "/home/masahiro/linux/scripts/diffconfig", line 64, in print_config
      print("+%s %s" % (config, new_value))
  BrokenPipeError: [Errno 32] Broken pipe

Python documentation [4] notes how to make scripts die immediately and
silently:

  """
  Piping output of your program to tools like head(1) will cause a
  SIGPIPE signal to be sent to your process when the receiver of its
  standard output closes early. This results in an exception like
  BrokenPipeError: [Errno 32] Broken pipe. To handle this case,
  wrap your entry point to catch this exception as follows:

    import os
    import sys

    def main():
        try:
            # simulate large output (your code replaces this loop)
            for x in range(10000):
                print("y")
            # flush output here to force SIGPIPE to be triggered
            # while inside this try block.
            sys.stdout.flush()
        except BrokenPipeError:
            # Python flushes standard streams on exit; redirect remaining output
            # to devnull to avoid another BrokenPipeError at shutdown
            devnull = os.open(os.devnull, os.O_WRONLY)
            os.dup2(devnull, sys.stdout.fileno())
            sys.exit(1)  # Python exits with error code 1 on EPIPE

    if __name__ == \'__main__\':
        main()

  Do not set SIGPIPE’s disposition to SIG_DFL in order to avoid
  BrokenPipeError. Doing that would cause your program to exit
  unexpectedly whenever any socket connection is interrupted while
  your program is still writing to it.
  """

Currently, tools/perf/scripts/python/intel-pt-events.py seems to be the
only script that fixes the issue that way.

tools/perf/scripts/python/compaction-times.py uses another approach
signal.signal(signal.SIGPIPE, signal.SIG_DFL) but the Python
documentation clearly says "Don\'t do it".

I cannot fix all Python scripts since there are so many.
I fixed some in the scripts/ directory.

[1]: https://lore.kernel.org/all/202211161056.1B9611A@keescook/
[2]: https://github.com/llvm/llvm-project/issues/59037
[3]: https://github.com/llvm/llvm-project/commit/4787efa38066adb51e2c049499d25b3610c0877b
[4]: https://docs.python.org/3/library/signal.html#note-on-sigpipe

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '8f9e0a5', '2023-01-24', 'Mark Rutland', 'ACPI: Don\'t build ACPICA with \'-Os\'', 'ACPI: Don\'t build ACPICA with \'-Os\'

The ACPICA code has been built with \'-Os\' since the beginning of git
history, though there\'s no explanatory comment as to why.

This is unfortunate as GCC drops the alignment specificed by
\'-falign-functions=N\' when \'-Os\' is used, as reported in GCC bug 88345:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=88345

This prevents CONFIG_FUNCTION_ALIGNMENT and
CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_64B from having their expected effect
on the ACPICA code. This is doubly unfortunate as in subsequent patches
arm64 will depend upon CONFIG_FUNCTION_ALIGNMENT for its ftrace
implementation.

Drop the \'-Os\' flag when building the ACPICA code. With this removed,
the code builds cleanly and works correctly in testing so far.

I\'ve tested this by selecting CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_64B=y,
building and booting a kernel using ACPI, and looking for misaligned
text symbols:

* arm64:

  Before, v6.2-rc3:
    # uname -rm
    6.2.0-rc3 aarch64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    5009

  Before, v6.2-rc3 + fixed __cold:
    # uname -rm
    6.2.0-rc3-00001-g2a2bedf8bfa9 aarch64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    919

  After:
    # uname -rm
    6.2.0-rc3-00002-g267bddc38572 aarch64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    323
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | grep acpi | wc -l
    0

* x86_64:

  Before, v6.2-rc3:
    # uname -rm
    6.2.0-rc3 x86_64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    11537

  Before, v6.2-rc3 + fixed __cold:
    # uname -rm
    6.2.0-rc3-00001-g2a2bedf8bfa9 x86_64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    2805

  After:
    # uname -rm
    6.2.0-rc3-00002-g267bddc38572 x86_64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    1357
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | grep acpi | wc -l
    0

With the patch applied, the remaining unaligned text labels are a
combination of static call trampolines and labels in assembly, which can
be dealt with in subsequent patches.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Cc: Florent Revest <revest@chromium.org>
Cc: Len Brown <lenb@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Robert Moore <robert.moore@intel.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>
Cc: linux-acpi@vger.kernel.org
Link: https://lore.kernel.org/r/20230123134603.1064407-4-mark.rutland@arm.com
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c27cd08', '2023-01-24', 'Mark Rutland', 'Compiler attributes: GCC cold function alignment workarounds', 'Compiler attributes: GCC cold function alignment workarounds

Contemporary versions of GCC (e.g. GCC 12.2.0) drop the alignment
specified by \'-falign-functions=N\' for functions marked with the
__cold__ attribute, and potentially for callees of __cold__ functions as
these may be implicitly marked as __cold__ by the compiler. LLVM appears
to respect \'-falign-functions=N\' in such cases.

This has been reported to GCC in bug 88345:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=88345

... which also covers alignment being dropped when \'-Os\' is used, which
will be addressed in a separate patch.

Currently, use of \'-falign-functions=N\' is limited to
CONFIG_FUNCTION_ALIGNMENT, which is largely used for performance and/or
analysis reasons (e.g. with CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_64B), but
isn\'t necessary for correct functionality. However, this dropped
alignment isn\'t great for the performance and/or analysis cases.

Subsequent patches will use CONFIG_FUNCTION_ALIGNMENT as part of arm64\'s
ftrace implementation, which will require all instrumented functions to
be aligned to at least 8-bytes.

This patch works around the dropped alignment by avoiding the use of the
__cold__ attribute when CONFIG_FUNCTION_ALIGNMENT is non-zero, and by
specifically aligning abort(), which GCC implicitly marks as __cold__.
As the __cold macro is now dependent upon config options (which is
against the policy described at the top of compiler_attributes.h), it is
moved into compiler_types.h.

I\'ve tested this by building and booting a kernel configured with
defconfig + CONFIG_EXPERT=y + CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_64B=y,
and looking for misaligned text symbols in /proc/kallsyms:

* arm64:

  Before:
    # uname -rm
    6.2.0-rc3 aarch64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    5009

  After:
    # uname -rm
    6.2.0-rc3-00001-g2a2bedf8bfa9 aarch64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    919

* x86_64:

  Before:
    # uname -rm
    6.2.0-rc3 x86_64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    11537

  After:
    # uname -rm
    6.2.0-rc3-00001-g2a2bedf8bfa9 x86_64
    # grep \' [Tt] \' /proc/kallsyms | grep -iv \'[048c]0 [Tt] \' | wc -l
    2805

There\'s clearly a substantial reduction in the number of misaligned
symbols. From manual inspection, the remaining unaligned text labels are
a combination of ACPICA functions (due to the use of \'-Os\'), static call
trampolines, and non-function labels in assembly, which will be dealt
with in subsequent patches.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Florent Revest <revest@chromium.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/r/20230123134603.1064407-3-mark.rutland@arm.com
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '56c5dab', '2022-12-29', 'Jiri Slaby (SUSE)', 'RDMA/srp: Move large values to a new enum for gcc13', 'RDMA/srp: Move large values to a new enum for gcc13

Since gcc13, each member of an enum has the same type as the enum [1]. And
that is inherited from its members. Provided these two:
  SRP_TAG_NO_REQ        = ~0U,
  SRP_TAG_TSK_MGMT	= 1U << 31
all other members are unsigned ints.

Esp. with SRP_MAX_SGE and SRP_TSK_MGMT_SQ_SIZE and their use in min(),
this results in the following warnings:
  include/linux/minmax.h:20:35: error: comparison of distinct pointer types lacks a cast
  drivers/infiniband/ulp/srp/ib_srp.c:563:42: note: in expansion of macro \'min\'

  include/linux/minmax.h:20:35: error: comparison of distinct pointer types lacks a cast
  drivers/infiniband/ulp/srp/ib_srp.c:2369:27: note: in expansion of macro \'min\'

So move the large values away to a separate enum, so that they don\'t
affect other members.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=36113

Link: https://lore.kernel.org/r/20221212120411.13750-1-jirislaby@kernel.org
Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
Signed-off-by: Leon Romanovsky <leon@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6a7ee50', '2022-12-19', 'Arnd Bergmann', 'ARM: disallow pre-ARMv5 builds with ld.lld', 'ARM: disallow pre-ARMv5 builds with ld.lld

lld cannot build for ARMv4/v4T targets because it inserts \'blx\' instructions
that are unsupported there:

  ld.lld: warning: lld uses blx instruction, no object with architecture supporting feature detected

Add a Kconfig time dependency to prevent those targets from being
selected in randconfig builds.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Link: https://github.com/llvm/llvm-project/issues/50764
Link: https://github.com/ClangBuiltLinux/linux/issues/964
Link: https://lore.kernel.org/r/20221215162635.3750763-1-arnd@kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '09ccde9', '2022-12-16', 'Paulo Miguel Almeida', 'drm/radeon: Replace 1-element arrays with flexible-array members', 'drm/radeon: Replace 1-element arrays with flexible-array members

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in structs _ATOM_DISPLAY_OBJECT_PATH,
_ATOM_DISPLAY_OBJECT_PATH_TABLE, _ATOM_OBJECT_TABLE, GOP_VBIOS_CONTENT
_ATOM_GPIO_VOLTAGE_OBJECT_V3 and refactor the rest of the code accordingly.

It\'s worth mentioning that doing a build before/after this patch
results in no binary output differences.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/239
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ff1cc97', '2022-12-15', 'Jiri Slaby (SUSE)', 'block/blk-iocost (gcc13): keep large values in a new enum', 'block/blk-iocost (gcc13): keep large values in a new enum

Since gcc13, each member of an enum has the same type as the enum [1]. And
that is inherited from its members. Provided:
  VTIME_PER_SEC_SHIFT     = 37,
  VTIME_PER_SEC           = 1LLU << VTIME_PER_SEC_SHIFT,
  ...
  AUTOP_CYCLE_NSEC        = 10LLU * NSEC_PER_SEC,
the named type is unsigned long.

This generates warnings with gcc-13:
  block/blk-iocost.c: In function \'ioc_weight_prfill\':
  block/blk-iocost.c:3037:37: error: format \'%u\' expects argument of type \'unsigned int\', but argument 4 has type \'long unsigned int\'

  block/blk-iocost.c: In function \'ioc_weight_show\':
  block/blk-iocost.c:3047:34: error: format \'%u\' expects argument of type \'unsigned int\', but argument 3 has type \'long unsigned int\'

So split the anonymous enum with large values to a separate enum, so
that they don\'t affect other members.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=36113

Cc: Martin Liska <mliska@suse.cz>
Cc: Tejun Heo <tj@kernel.org>
Cc: Josef Bacik <josef@toxicpanda.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: cgroups@vger.kernel.org
Cc: linux-block@vger.kernel.org
Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Link: https://lore.kernel.org/r/20221213120826.17446-1-jirislaby@kernel.org
Signed-off-by: Jens Axboe <axboe@kernel.dk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2d4ee16', '2022-12-14', 'Jiri Slaby (SUSE)', 'wireguard: timers: cast enum limits members to int in prints', 'wireguard: timers: cast enum limits members to int in prints

Since gcc13, each member of an enum has the same type as the enum. And
that is inherited from its members. Provided "REKEY_AFTER_MESSAGES =
1ULL << 60", the named type is unsigned long.

This generates warnings with gcc-13:
  error: format \'%d\' expects argument of type \'int\', but argument 6 has type \'long unsigned int\'

Cast those particular enum members to int when printing them.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=36113
Cc: Martin Liska <mliska@suse.cz>
Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Link: https://lore.kernel.org/all/20221213225208.3343692-2-Jason@zx2c4.com/
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f077880', '2022-12-06', 'Arnd Bergmann', 'ata: ahci: fix enum constants for gcc-13', 'ata: ahci: fix enum constants for gcc-13

gcc-13 slightly changes the type of constant expressions that are defined
in an enum, which triggers a compile time sanity check in libata:

linux/drivers/ata/libahci.c: In function \'ahci_led_store\':
linux/include/linux/compiler_types.h:357:45: error: call to \'__compiletime_assert_302\' declared with attribute error: BUILD_BUG_ON failed: sizeof(_s) > sizeof(long)
357 | _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)

The new behavior is that sizeof() returns the same value for the
constant as it does for the enum type, which is generally more sensible
and consistent.

The problem in libata is that it contains a single enum definition for
lots of unrelated constants, some of which are large positive (unsigned)
integers like 0xffffffff, while others like (1<<31) are interpreted as
negative integers, and this forces the enum type to become 64 bit wide
even though most constants would still fit into a signed 32-bit \'int\'.

Fix this by changing the entire enum definition to use BIT(x) in place
of (1<<x), which results in all values being seen as \'unsigned\' and
fitting into an unsigned 32-bit type.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=107917
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=107405
Reported-by: Luis Machado <luis.machado@arm.com>
Cc: linux-ide@vger.kernel.org
Cc: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: stable@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Tested-by: Luis Machado <luis.machado@arm.com>
Signed-off-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ab0350c', '2022-12-05', 'James Hilliard', 'selftests/bpf: Fix conflicts with built-in functions in bpf_iter_ksym', 'selftests/bpf: Fix conflicts with built-in functions in bpf_iter_ksym

Both tolower and toupper are built in c functions, we should not
redefine them as this can result in a build error.

Fixes the following errors:
progs/bpf_iter_ksym.c:10:20: error: conflicting types for built-in function \'tolower\'; expected \'int(int)\' [-Werror=builtin-declaration-mismatch]
   10 | static inline char tolower(char c)
      |                    ^~~~~~~
progs/bpf_iter_ksym.c:5:1: note: \'tolower\' is declared in header \'<ctype.h>\'
    4 | #include <bpf/bpf_helpers.h>
  +++ |+#include <ctype.h>
    5 |
progs/bpf_iter_ksym.c:17:20: error: conflicting types for built-in function \'toupper\'; expected \'int(int)\' [-Werror=builtin-declaration-mismatch]
   17 | static inline char toupper(char c)
      |                    ^~~~~~~
progs/bpf_iter_ksym.c:17:20: note: \'toupper\' is declared in header \'<ctype.h>\'

See background on this sort of issue:
https://stackoverflow.com/a/20582607
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=12213

(C99, 7.1.3p1) "All identifiers with external linkage in any of the
following subclauses (including the future library directions) are
always reserved for use as identifiers with external linkage."

This is documented behavior in GCC:
https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html#index-std-2

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
Acked-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/r/20221203010847.2191265-1-james.hilliard1@gmail.com
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '278ab97', '2022-12-01', 'Kees Cook', 'wifi: ieee80211: Do not open-code qos address offsets', 'wifi: ieee80211: Do not open-code qos address offsets

When building with -Wstringop-overflow, GCC\'s KASAN implementation does
not correctly perform bounds checking within some complex structures
when faced with literal offsets, and can get very confused. For example,
this warning is seen due to literal offsets into sturct ieee80211_hdr
that may or may not be large enough:

drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c: In function \'iwl_mvm_rx_mpdu_mq\':
drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c:2022:29: warning: writing 1 byte into a region of size 0 [-Wstringop-overflow=]
 2022 |                         *qc &= ~IEEE80211_QOS_CTL_A_MSDU_PRESENT;
In file included from drivers/net/wireless/intel/iwlwifi/mvm/fw-api.h:32,
                 from drivers/net/wireless/intel/iwlwifi/mvm/sta.h:15,
                 from drivers/net/wireless/intel/iwlwifi/mvm/mvm.h:27,
                 from drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c:10:
drivers/net/wireless/intel/iwlwifi/mvm/../fw/api/rx.h:559:16: note: at offset [78, 166] into destination object \'mpdu_len\' of size 2
  559 |         __le16 mpdu_len;
      |                ^~~~~~~~

Refactor ieee80211_get_qos_ctl() to avoid using literal offsets,
requiring the creation of the actual structure that is described in the
comments. Explicitly choose the desired offset, making the code more
human-readable too. This is one of the last remaining warning to fix
before enabling -Wstringop-overflow globally.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97490
Link: https://github.com/KSPP/linux/issues/181
Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Kalle Valo <kvalo@kernel.org>
Cc: Gregory Greenman <gregory.greenman@intel.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20221130212641.never.627-kees@kernel.org
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6f6cb17', '2022-12-01', 'Lee Jones', 'drm/amdgpu: temporarily disable broken Clang builds due to blown stack-frame', 'drm/amdgpu: temporarily disable broken Clang builds due to blown stack-frame

Patch series "Fix a bunch of allmodconfig errors", v2.

Since b339ec9c229aa ("kbuild: Only default to -Werror if COMPILE_TEST")
WERROR now defaults to COMPILE_TEST meaning that it\'s enabled for
allmodconfig builds.  This leads to some interesting build failures when
using Clang, each resolved in this set.

With this set applied, I am able to obtain a successful allmodconfig Arm
build.


This patch (of 2):

calculate_bandwidth() is presently broken on all !(X86_64 || SPARC64 ||
ARM64) architectures built with Clang (all released versions), whereby the
stack frame gets blown up to well over 5k.  This would cause an immediate
kernel panic on most architectures.  We\'ll revert this when the following
bug report has been resolved:
https://github.com/llvm/llvm-project/issues/41896.

Link: https://lkml.kernel.org/r/20221125120750.3537134-1-lee@kernel.org
Link: https://lkml.kernel.org/r/20221125120750.3537134-2-lee@kernel.org
Signed-off-by: Lee Jones <lee@kernel.org>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Lee Jones <lee@kernel.org>
Cc: Leo Li <sunpeng.li@amd.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>
Cc: Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Tom Rix <trix@redhat.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '25b2483', '2022-11-23', 'Paulo Miguel Almeida', 'drm/amdgpu: Replace remaining 1-element array with flex-array', 'drm/amdgpu: Replace remaining 1-element array with flex-array

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in struct GOP_VBIOS_CONTENT and refactor the
rest of the code accordingly.

Important to mention is that doing a build before/after this patch
results in no functional binary output differences.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/238
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b5e72d2', '2022-11-21', 'Vlastimil Babka', 'Merge branch \'slab/for-6.2/alloc_size\' into slab/for-next', 'Merge branch \'slab/for-6.2/alloc_size\' into slab/for-next

Two patches from Kees Cook [1]:

These patches work around a deficiency in GCC (>=11) and Clang (<16)
where the __alloc_size attribute does not apply to inlines.
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=96503

This manifests as reduced overflow detection coverage for many allocation
sites under CONFIG_FORTIFY_SOURCE=y, where the allocation size was not
actually being propagated to __builtin_dynamic_object_size().

[1] https://lore.kernel.org/all/20221118034713.gonna.754-kees@kernel.org/
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6fa57d7', '2022-11-21', 'Kees Cook', 'slab: Remove special-casing of const 0 size allocations', 'slab: Remove special-casing of const 0 size allocations

Passing a constant-0 size allocation into kmalloc() or kmalloc_node()
does not need to be a fast-path operation, so the static return value
can be removed entirely. This makes sure that all paths through the
inlines result in a full extern function call, where __alloc_size()
hints will actually be seen[1] by GCC. (A constant return value of 0
means the "0" allocation size won\'t be propagated by the inline.)

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=96503

Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Signed-off-by: Vlastimil Babka <vbabka@suse.cz>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'bd3fe58', '2022-11-16', 'Paulo Miguel Almeida', 'drm/amdgpu: Replace one-elements array with flex-array members', 'drm/amdgpu: Replace one-elements array with flex-array members

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in structs ATOM_I2C_VOLTAGE_OBJECT_V3,
ATOM_ASIC_INTERNAL_SS_INFO_V2, ATOM_ASIC_INTERNAL_SS_INFO_V3,
and refactor the rest of the code accordingly.

Important to mention is that doing a build before/after this patch
results in no functional binary output differences.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/238
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '93e3f45', '2022-11-15', 'Sathvika Vasireddy', 'powerpc: Fix __WARN_FLAGS() for use with Objtool', 'powerpc: Fix __WARN_FLAGS() for use with Objtool

Commit 1e688dd2a3d675 ("powerpc/bug: Provide better flexibility to
WARN_ON/__WARN_FLAGS() with asm goto") updated __WARN_FLAGS() to use asm
goto, and added a call to \'unreachable()\' after the asm goto for optimal
code generation. With CONFIG_OBJTOOL enabled, \'annotate_unreachable()\'
statement in \'unreachable()\' tries to note down the location of the
subsequent instruction in a separate elf section to aid code flow
analysis. However, on powerpc, this results in gcc emitting a call to a
symbol of size 0. This results in objtool complaining of "unannotated
intra-function call" since the target symbol is not a valid function
call destination.

Objtool wants this annotation for code flow analysis, which we are not
yet enabling on powerpc. As such, expand the call to \'unreachable()\' in
__WARN_FLAGS() without annotate_unreachable():
        barrier_before_unreachable();
        __builtin_unreachable();

This still results in optimal code generation for __WARN_FLAGS(), while
getting rid of the objtool warning.

We still need barrier_before_unreachable() to work around gcc bugs 82365
and 106751:
- https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82365
- https://gcc.gnu.org/bugzilla/show_bug.cgi?id=106751

Tested-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
Reviewed-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Acked-by: Josh Poimboeuf <jpoimboe@kernel.org>
Signed-off-by: Sathvika Vasireddy <sv@linux.ibm.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://lore.kernel.org/r/20221114175754.1131267-2-sv@linux.ibm.com

');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7989d0b', '2022-11-11', 'Paulo Miguel Almeida', 'drm/amdgpu: Replace one-element array with flex-array member', 'drm/amdgpu: Replace one-element array with flex-array member

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in structs _ATOM_CONNECTOR_DEVICE_TAG_RECORD,
_ATOM_OBJECT_GPIO_CNTL_RECORD, _ATOM_BRACKET_LAYOUT_RECORD,
_ATOM_BRACKET_LAYOUT_RECORD, _ATOM_LEAKAGE_VOLTAGE_OBJECT_V3,
_ATOM_FUSION_SYSTEM_INFO_V3, _ATOM_I2C_DATA_RECORD,
_ATOM_I2C_DEVICE_SETUP_INFO, _ATOM_ASIC_MVDD_INFO and refactor the
rest of the code accordingly. While at it, removed a redundant casting.

Important to mention is that doing a build before/after this patch results
in no binary output differences.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/238
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e50db38', '2022-11-10', 'Paulo Miguel Almeida', 'drm/amdgpu: Replace 1-element array with flexible-array member', 'drm/amdgpu: Replace 1-element array with flexible-array member

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in structs _ATOM_GPIO_PIN_ASSIGNMENT,
_ATOM_DISPLAY_OBJECT_PATH, _ATOM_DISPLAY_OBJECT_PATH_TABLE,
_ATOM_OBJECT_TABLE and refactor the rest of the code accordingly.

Important to mention is that doing a build before/after this patch results
in no functional binary output differences.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/238
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd96d0f9', '2022-11-09', 'Paulo Miguel Almeida', 'dlm: replace one-element array with fixed size array', 'dlm: replace one-element array with fixed size array

One-element arrays are deprecated. So, replace one-element array with
fixed size array member in struct dlm_ls, and refactor the rest of the
code, accordingly.

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/228
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836
Link: https://lore.kernel.org/lkml/Y0W5jkiXUkpNl4ap@mail.google.com/

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: David Teigland <teigland@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1d2e9b6', '2022-11-09', 'Nick Desaulniers', 'ARM: 9265/1: pass -march= only to compiler', 'ARM: 9265/1: pass -march= only to compiler

When both -march= and -Wa,-march= are specified for assembler or
assembler-with-cpp sources, GCC and Clang will prefer the -Wa,-march=
value but Clang will warn that -march= is unused.

warning: argument unused during compilation: \'-march=armv6k\'
[-Wunused-command-line-argument]

This is the top group of warnings we observe when using clang to
assemble the kernel via `ARCH=arm make LLVM=1`.

Split the arch-y make variable into two, so that -march= flags only get
passed to the compiler, not the assembler. -D flags are added to
KBUILD_CPPFLAGS which is used for both C and assembler-with-cpp sources.

Clang is trying to warn that it doesn\'t support different values for
-march= and -Wa,-march= (like GCC does, but the kernel doesn\'t need this)
though the value of the preprocessor define __thumb2__ is based on
-march=. Make sure to re-set __thumb2__ via -D flag for assembler
sources now that we\'re no longer passing -march= to the assembler. Set
it to a different value than the preprocessor would for -march= in case
-march= gets accidentally re-added to KBUILD_AFLAGS in the future.
Thanks to Ard and Nathan for this suggestion.

Link: https://github.com/ClangBuiltLinux/linux/issues/1315
Link: https://github.com/ClangBuiltLinux/linux/issues/1587
Link: https://github.com/llvm/llvm-project/issues/55656

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a2faac3', '2022-11-09', 'Nick Desaulniers', 'ARM: 9263/1: use .arch directives instead of assembler command line flags', 'ARM: 9263/1: use .arch directives instead of assembler command line flags

Similar to commit a6c30873ee4a ("ARM: 8989/1: use .fpu assembler
directives instead of assembler arguments").

GCC and GNU binutils support setting the "sub arch" via -march=,
-Wa,-march, target function attribute, and .arch assembler directive.

Clang was missing support for -Wa,-march=, but this was implemented in
clang-13.

The behavior of both GCC and Clang is to
prefer -Wa,-march= over -march= for assembler and assembler-with-cpp
sources, but Clang will warn about the -march= being unused.

clang: warning: argument unused during compilation: \'-march=armv6k\'
[-Wunused-command-line-argument]

Since most assembler is non-conditionally assembled with one sub arch
(modulo arch/arm/delay-loop.S which conditionally is assembled as armv4
based on CONFIG_ARCH_RPC, and arch/arm/mach-at91/pm-suspend.S which is
conditionally assembled as armv7-a based on CONFIG_CPU_V7), prefer the
.arch assembler directive.

Add a few more instances found in compile testing as found by Arnd and
Nathan.

Link: https://github.com/llvm/llvm-project/commit/1d51c699b9e2ebc5bcfdbe85c74cc871426333d4
Link: https://bugs.llvm.org/show_bug.cgi?id=48894
Link: https://github.com/ClangBuiltLinux/linux/issues/1195
Link: https://github.com/ClangBuiltLinux/linux/issues/1315

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '320e259', '2022-11-05', 'Paulo Miguel Almeida', 'drm/amdgpu: Replace one-element array with flexible-array member', 'drm/amdgpu: Replace one-element array with flexible-array member

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in struct _ATOM_FAKE_EDID_PATCH_RECORD and
refactor the rest of the code accordingly.

Important to mention is that doing a build before/after this patch
results in no binary output differences.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/238
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c81c5bd', '2022-11-05', 'Paulo Miguel Almeida', 'drm/radeon: Replace one-element array with flexible-array member', 'drm/radeon: Replace one-element array with flexible-array member

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in struct _ATOM_FAKE_EDID_PATCH_RECORD and
refactor the rest of the code accordingly.

It\'s worth mentioning that doing a build before/after this patch results
in no binary output differences.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/239
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '26117d9', '2022-10-20', 'Kees Cook', 'can: kvaser_usb: Remove -Warray-bounds exception', 'can: kvaser_usb: Remove -Warray-bounds exception

GCC-12 emits false positive -Warray-bounds warnings with
CONFIG_UBSAN_SHIFT (-fsanitize=shift). This is fixed in GCC 13[1],
and there is top-level Makefile logic to remove -Warray-bounds for
known-bad GCC versions staring with commit f0be87c42cbd ("gcc-12: disable
\'-Warray-bounds\' universally for now").

Remove the local work-around.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105679

Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/all/20221006192035.1742912-1-keescook@chromium.org
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '542f25a', '2022-10-18', 'Paulo Miguel Almeida', 'HID: hyperv: Replace one-element array with flexible-array member', 'HID: hyperv: Replace one-element array with flexible-array member

One-element arrays are deprecated, and we are replacing them with
flexible array members instead. So, replace one-element array with
flexible-array member in structs synthhid_msg, synthhid_input_report,
pipe_prt_msg and refactor the rest of the code accordingly.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/210
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
Reviewed-by: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Reviewed-by: Michael Kelley <mikelley@microsoft.com>
Signed-off-by: Jiri Kosina <jkosina@suse.cz>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2577a58', '2022-10-12', 'Kees Cook', 'wifi: carl9170: Remove -Warray-bounds exception', 'wifi: carl9170: Remove -Warray-bounds exception

GCC-12 emits false positive -Warray-bounds warnings with
CONFIG_UBSAN_SHIFT (-fsanitize=shift). This is fixed in GCC 13[1],
and there is top-level Makefile logic to remove -Warray-bounds for
known-bad GCC versions staring with commit f0be87c42cbd ("gcc-12: disable
\'-Warray-bounds\' universally for now").

Remove the local work-around.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105679

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: Kalle Valo <quic_kvalo@quicinc.com>
Link: https://lore.kernel.org/r/20221006192051.1742930-1-keescook@chromium.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd174768', '2022-10-11', 'Kees Cook', 'wifi: ath9k: Remove -Warray-bounds exception', 'wifi: ath9k: Remove -Warray-bounds exception

GCC-12 emits false positive -Warray-bounds warnings with
CONFIG_UBSAN_SHIFT (-fsanitize=shift). This is fixed in GCC 13[1],
and there is top-level Makefile logic to remove -Warray-bounds for
known-bad GCC versions staring with commit f0be87c42cbd ("gcc-12: disable
\'-Warray-bounds\' universally for now").

Remove the local work-around.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105679

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Toke Høiland-Jørgensen <toke@toke.dk>
Signed-off-by: Kalle Valo <quic_kvalo@quicinc.com>
Link: https://lore.kernel.org/r/20221006192054.1742982-1-keescook@chromium.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'aabf615', '2022-10-07', 'Kees Cook', 'net: ethernet: bgmac: Remove -Warray-bounds exception', 'net: ethernet: bgmac: Remove -Warray-bounds exception

GCC-12 emits false positive -Warray-bounds warnings with
CONFIG_UBSAN_SHIFT (-fsanitize=shift). This is fixed in GCC 13[1],
and there is top-level Makefile logic to remove -Warray-bounds for
known-bad GCC versions staring with commit f0be87c42cbd ("gcc-12: disable
\'-Warray-bounds\' universally for now").

Remove the local work-around.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105679

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4af609b', '2022-10-07', 'Kees Cook', 'net: ethernet: mediatek: Remove -Warray-bounds exception', 'net: ethernet: mediatek: Remove -Warray-bounds exception

GCC-12 emits false positive -Warray-bounds warnings with
CONFIG_UBSAN_SHIFT (-fsanitize=shift). This is fixed in GCC 13[1],
and there is top-level Makefile logic to remove -Warray-bounds for
known-bad GCC versions staring with commit f0be87c42cbd ("gcc-12: disable
\'-Warray-bounds\' universally for now").

Remove the local work-around.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105679

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '943deb6', '2022-10-06', 'Gustavo A. R. Silva', 'cifs: Replace a couple of one-element arrays with flexible-array members', 'cifs: Replace a couple of one-element arrays with flexible-array members

One-element arrays are deprecated, and we are replacing them with flexible
array members instead. So, replace one-element arrays with flexible-array
member in structs negotiate_req and extended_response, and refactor the
rest of the code, accordingly.

Also, make use of the DECLARE_FLEX_ARRAY() helper to declare flexible
array member EncryptionKey in union u. This new helper allows for
flexible-array members in unions.

Change pointer notation to proper array notation in a call to memcpy()
where flexible-array member DialectsArray is being used as destination
argument.

Important to mention is that doing a build before/after this patch results
in no binary output differences.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/229
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ronnie Sahlberg <lsahlber@redhat.com>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Steve French <stfrench@microsoft.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '865dad2', '2022-10-04', 'Linus Torvalds', 'Merge tag \'kcfi-v6.1-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux', 'Merge tag \'kcfi-v6.1-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux

Pull kcfi updates from Kees Cook:
 "This replaces the prior support for Clang\'s standard Control Flow
  Integrity (CFI) instrumentation, which has required a lot of special
  conditions (e.g. LTO) and work-arounds.

  The new implementation ("Kernel CFI") is specific to C, directly
  designed for the Linux kernel, and takes advantage of architectural
  features like x86\'s IBT. This series retains arm64 support and adds
  x86 support.

  GCC support is expected in the future[1], and additional "generic"
  architectural support is expected soon[2].

  Summary:

   - treewide: Remove old CFI support details

   - arm64: Replace Clang CFI support with Clang KCFI support

   - x86: Introduce Clang KCFI support"

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=107048 [1]
Link: https://github.com/samitolvanen/llvm-project/commits/kcfi_generic [2]

* tag \'kcfi-v6.1-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux: (22 commits)
  x86: Add support for CONFIG_CFI_CLANG
  x86/purgatory: Disable CFI
  x86: Add types to indirectly called assembly functions
  x86/tools/relocs: Ignore __kcfi_typeid_ relocations
  kallsyms: Drop CONFIG_CFI_CLANG workarounds
  objtool: Disable CFI warnings
  objtool: Preserve special st_shndx indexes in elf_update_symbol
  treewide: Drop __cficanonical
  treewide: Drop WARN_ON_FUNCTION_MISMATCH
  treewide: Drop function_nocfi
  init: Drop __nocfi from __init
  arm64: Drop unneeded __nocfi attributes
  arm64: Add CFI error handling
  arm64: Add types to indirect called assembly functions
  psci: Fix the function type for psci_initcall_t
  lkdtm: Emit an indirect call for CFI tests
  cfi: Add type helper macros
  cfi: Switch to -fsanitize=kcfi
  cfi: Drop __CFI_ADDRESSABLE
  cfi: Remove CONFIG_CFI_CLANG_SHADOW
  ...
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'fd2f045', '2022-09-26', 'Gustavo A. R. Silva', 'scsi: pm8001: Replace one-element array with flexible-array member', 'scsi: pm8001: Replace one-element array with flexible-array member

One-element arrays are deprecated, and we are replacing them with flexible
array members instead. So, replace one-element array with flexible-array
member in struct fw_control_info.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE routines
on memcpy() and help us make progress towards globally enabling
-fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/207
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836 [1]
Link: https://lore.kernel.org/r/Yyy31OuBza1FJCXP@work
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Jack Wang <jinpu.wang@ionos.com>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '54d9469', '2022-09-08', 'Kees Cook', 'fortify: Add run-time WARN for cross-field memcpy()', 'fortify: Add run-time WARN for cross-field memcpy()

Enable run-time checking of dynamic memcpy() and memmove() lengths,
issuing a WARN when a write would exceed the size of the target struct
member, when built with CONFIG_FORTIFY_SOURCE=y. This would have
caught all of the memcpy()-based buffer overflows in the last 3 years,
specifically covering all the cases where the destination buffer size
is known at compile time.

This change ONLY adds a run-time warning. As false positives are currently
still expected, this will not block the overflow. The new warnings will
look like this:

  memcpy: detected field-spanning write (size N) of single field "var->dest" (size M)
  WARNING: CPU: n PID: pppp at source/file/path.c:nr function+0xXX/0xXX [module]

There may be false positives in the kernel where intentional
field-spanning writes are happening. These need to be addressed
similarly to how the compile-time cases were addressed: add a
struct_group(), split the memcpy(), or some other refactoring.

In order to make counting/investigating instances of added runtime checks
easier, each instance includes the destination variable name as a WARN
argument, prefixed with \'field "\'. Therefore, on an x86_64 defconfig
build, it is trivial to inspect the build artifacts to find instances.
For example on an x86_64 defconfig build, there are 78 new run-time
memcpy() bounds checks added:

  $ for i in vmlinux $(find . -name \'*.ko\'); do \\
      strings "$i" | grep \'^field "\'; done | wc -l
  78

Simple cases where a destination buffer is known to be a dynamic size
do not generate a WARN. For example:

struct normal_flex_array {
	void *a;
	int b;
	u32 c;
	size_t array_size;
	u8 flex_array[];
};

struct normal_flex_array *instance;
...
/* These will be ignored for run-time bounds checking. */
memcpy(instance, src, len);
memcpy(instance->flex_array, src, len);

However, one of the dynamic-sized destination cases is irritatingly
unable to be detected by the compiler: when using memcpy() to target
a composite struct member which contains a trailing flexible array
struct. For example:

struct wrapper {
	int foo;
	char bar;
	struct normal_flex_array embedded;
};

struct wrapper *instance;
...
/* This will incorrectly WARN when len > sizeof(instance->embedded) */
memcpy(&instance->embedded, src, len);

These cases end up appearing to the compiler to be sized as if the
flexible array had 0 elements. :( For more details see:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101832
https://godbolt.org/z/vW6x8vh4P

These "composite flexible array structure destination" cases will be
need to be flushed out and addressed on a case-by-case basis.

Regardless, for the general case of using memcpy() on flexible array
destinations, future APIs will be created to handle common cases. Those
can be used to migrate away from open-coded memcpy() so that proper
error handling (instead of trapping) can be used.

As mentioned, none of these bounds checks block any overflows
currently. For users that have tested their workloads, do not encounter
any warnings, and wish to make these checks stop any overflows, they
can use a big hammer and set the sysctl panic_on_warn=1.

Signed-off-by: Kees Cook <keescook@chromium.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c0a454b', '2022-09-06', 'Mark Brown', 'arm64/bti: Disable in kernel BTI when cross section thunks are broken', 'arm64/bti: Disable in kernel BTI when cross section thunks are broken

GCC does not insert a `bti c` instruction at the beginning of a function
when it believes that all callers reach the function through a direct
branch[1]. Unfortunately the logic it uses to determine this is not
sufficiently robust, for example not taking account of functions being
placed in different sections which may be loaded separately, so we may
still see thunks being generated to these functions. If that happens,
the first instruction in the callee function will result in a Branch
Target Exception due to the missing landing pad.

While this has currently only been observed in the case of modules
having their main code loaded sufficiently far from their init section
to require thunks it could potentially happen for other cases so the
safest thing is to disable BTI for the kernel when building with an
affected toolchain.

[1]: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=106671

Reported-by: D Scott Phillips <scott@os.amperecomputing.com>
[Bits of the commit message are lifted from his report & workaround]
Signed-off-by: Mark Brown <broonie@kernel.org>
Link: https://lore.kernel.org/r/20220905142255.591990-1-broonie@kernel.org
Cc: <stable@vger.kernel.org> # v5.10+
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b0839b2', '2022-09-05', 'Nick Desaulniers', 'Makefile.extrawarn: re-enable -Wformat for clang; take 2', 'Makefile.extrawarn: re-enable -Wformat for clang; take 2

-Wformat was recently re-enabled for builds with clang, then quickly
re-disabled, due to concerns stemming from the frequency of default
argument promotion related warning instances.

commit 258fafcd0683 ("Makefile.extrawarn: re-enable -Wformat for clang")
commit 21f9c8a13bb2 ("Revert "Makefile.extrawarn: re-enable -Wformat for clang"")

ISO WG14 has ratified N2562 to address default argument promotion
explicitly for printf, as part of the upcoming ISO C2X standard.

The behavior of clang was changed in clang-16 to not warn for the cited
cases in all language modes.

Add a version check, so that users of clang-16 now get the full effect
of -Wformat. For older clang versions, re-enable flags under the
-Wformat group that way users still get some useful checks related to
format strings, without noisy default argument promotion warnings. I
intentionally omitted -Wformat-y2k and -Wformat-security from being
re-enabled, which are also part of -Wformat in clang-16.

Link: https://github.com/ClangBuiltLinux/linux/issues/378
Link: https://github.com/llvm/llvm-project/issues/57102
Link: https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2562.pdf
Suggested-by: Justin Stitt <jstitt007@gmail.com>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Youngmin Nam <youngmin.nam@samsung.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a0a12c3', '2022-08-22', 'Nick Desaulniers', 'asm goto: eradicate CC_HAS_ASM_GOTO', 'asm goto: eradicate CC_HAS_ASM_GOTO

GCC has supported asm goto since 4.5, and Clang has since version 9.0.0.
The minimum supported versions of these tools for the build according to
Documentation/process/changes.rst are 5.1 and 11.0.0 respectively.

Remove the feature detection script, Kconfig option, and clean up some
fallback code that is no longer supported.

The removed script was also testing for a GCC specific bug that was
fixed in the 4.7 release.

Also remove workarounds for bpftrace using clang older than 9.0.0, since
other BPF backend fixes are required at this point.

Link: https://lore.kernel.org/lkml/CAK7LNATSr=BXKfkdW8f-H5VT_w=xBpT2ZQcZ7rm6JfkdE+QnmA@mail.gmail.com/
Link: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=48637
Acked-by: Borislav Petkov <bp@suse.de>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Ingo Molnar <mingo@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ffcf9c5', '2022-08-11', 'Nick Desaulniers', 'x86: link vdso and boot with -z noexecstack --no-warn-rwx-segments', 'x86: link vdso and boot with -z noexecstack --no-warn-rwx-segments

Users of GNU ld (BFD) from binutils 2.39+ will observe multiple
instances of a new warning when linking kernels in the form:

  ld: warning: arch/x86/boot/pmjump.o: missing .note.GNU-stack section implies executable stack
  ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
  ld: warning: arch/x86/boot/compressed/vmlinux has a LOAD segment with RWX permissions

Generally, we would like to avoid the stack being executable.  Because
there could be a need for the stack to be executable, assembler sources
have to opt-in to this security feature via explicit creation of the
.note.GNU-stack feature (which compilers create by default) or command
line flag --noexecstack.  Or we can simply tell the linker the
production of such sections is irrelevant and to link the stack as
--noexecstack.

LLVM\'s LLD linker defaults to -z noexecstack, so this flag isn\'t
strictly necessary when linking with LLD, only BFD, but it doesn\'t hurt
to be explicit here for all linkers IMO.  --no-warn-rwx-segments is
currently BFD specific and only available in the current latest release,
so it\'s wrapped in an ld-option check.

While the kernel makes extensive usage of ELF sections, it doesn\'t use
permissions from ELF segments.

Link: https://lore.kernel.org/linux-block/3af4127a-f453-4cf7-f133-a181cce06f73@kernel.dk/
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=ba951afb99912da01a6e8434126b8fac7aa75107
Link: https://github.com/llvm/llvm-project/issues/57009
Reported-and-tested-by: Jens Axboe <axboe@kernel.dk>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '0d362be', '2022-08-11', 'Nick Desaulniers', 'Makefile: link with -z noexecstack --no-warn-rwx-segments', 'Makefile: link with -z noexecstack --no-warn-rwx-segments

Users of GNU ld (BFD) from binutils 2.39+ will observe multiple
instances of a new warning when linking kernels in the form:

  ld: warning: vmlinux: missing .note.GNU-stack section implies executable stack
  ld: NOTE: This behaviour is deprecated and will be removed in a future version of the linker
  ld: warning: vmlinux has a LOAD segment with RWX permissions

Generally, we would like to avoid the stack being executable.  Because
there could be a need for the stack to be executable, assembler sources
have to opt-in to this security feature via explicit creation of the
.note.GNU-stack feature (which compilers create by default) or command
line flag --noexecstack.  Or we can simply tell the linker the
production of such sections is irrelevant and to link the stack as
--noexecstack.

LLVM\'s LLD linker defaults to -z noexecstack, so this flag isn\'t
strictly necessary when linking with LLD, only BFD, but it doesn\'t hurt
to be explicit here for all linkers IMO.  --no-warn-rwx-segments is
currently BFD specific and only available in the current latest release,
so it\'s wrapped in an ld-option check.

While the kernel makes extensive usage of ELF sections, it doesn\'t use
permissions from ELF segments.

Link: https://lore.kernel.org/linux-block/3af4127a-f453-4cf7-f133-a181cce06f73@kernel.dk/
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=ba951afb99912da01a6e8434126b8fac7aa75107
Link: https://github.com/llvm/llvm-project/issues/57009
Reported-and-tested-by: Jens Axboe <axboe@kernel.dk>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1d3551c', '2022-08-11', 'Linus Torvalds', 'crypto: blake2b: effectively disable frame size warning', 'crypto: blake2b: effectively disable frame size warning

It turns out that gcc-12.1 has some nasty problems with register
allocation on a 32-bit x86 build for the 64-bit values used in the
generic blake2b implementation, where the pattern of 64-bit rotates and
xor operations ends up making gcc generate horrible code.

As a result it ends up with a ridiculously large stack frame for all the
spills it generates, resulting in the following build problem:

    crypto/blake2b_generic.c: In function ‘blake2b_compress_one_generic’:
    crypto/blake2b_generic.c:109:1: error: the frame size of 2640 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]

on the same test-case, clang ends up generating a stack frame that is
just 296 bytes (and older gcc versions generate a slightly bigger one at
428 bytes - still nowhere near that almost 3kB monster stack frame of
gcc-12.1).

The issue is fixed both in mainline and the GCC 12 release branch [1],
but current release compilers end up failing the i386 allmodconfig build
due to this issue.

Disable the warning for now by simply raising the frame size for this
one file, just to keep this issue from having people turn off WERROR.

Link: https://lore.kernel.org/all/CAHk-=wjxqgeG2op+=W9sqgsWqCYnavC+SRfVyopu9-31S6xw+Q@mail.gmail.com/
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105930 [1]
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'cb928ac', '2022-08-10', 'Naveen N. Rao', 'powerpc64/ftrace: Fix ftrace for clang builds', 'powerpc64/ftrace: Fix ftrace for clang builds

Clang doesn\'t support -mprofile-kernel ABI, so guard the checks against
CONFIG_DYNAMIC_FTRACE_WITH_REGS, rather than the elf ABI version.

Fixes: 23b44fc248f4 ("powerpc/ftrace: Make __ftrace_make_{nop/call}() common to PPC32 and PPC64")
Cc: stable@vger.kernel.org # v5.19+
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Ondrej Mosnacek <omosnacek@gmail.com>
Signed-off-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
Tested-by: Ondrej Mosnacek <omosnacek@gmail.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://github.com/llvm/llvm-project/issues/57031
Link: https://github.com/ClangBuiltLinux/linux/issues/1682
Link: https://lore.kernel.org/r/20220809095907.418764-1-naveen.n.rao@linux.vnet.ibm.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a4cb6e6', '2022-08-09', 'Marc Kleine-Budde', 'can: ems_usb: fix clang\'s -Wunaligned-access warning', 'can: ems_usb: fix clang\'s -Wunaligned-access warning

clang emits a -Wunaligned-access warning on struct __packed
ems_cpc_msg.

The reason is that the anonymous union msg (not declared as packed) is
being packed right after some non naturally aligned variables (3*8
bits + 2*32) inside a packed struct:

| struct __packed ems_cpc_msg {
| 	u8 type;	/* type of message */
| 	u8 length;	/* length of data within union \'msg\' */
| 	u8 msgid;	/* confirmation handle */
| 	__le32 ts_sec;	/* timestamp in seconds */
| 	__le32 ts_nsec;	/* timestamp in nano seconds */
|	/* ^ not naturally aligned */
|
| 	union {
| 	/* ^ not declared as packed */
| 		u8 generic[64];
| 		struct cpc_can_msg can_msg;
| 		struct cpc_can_params can_params;
| 		struct cpc_confirm confirmation;
| 		struct cpc_overrun overrun;
| 		struct cpc_can_error error;
| 		struct cpc_can_err_counter err_counter;
| 		u8 can_state;
| 	} msg;
| };

Starting from LLVM 14, having an unpacked struct nested in a packed
struct triggers a warning. c.f. [1].

Fix the warning by marking the anonymous union as packed.

[1] https://github.com/llvm/llvm-project/issues/55520

Fixes: 702171adeed3 ("ems_usb: Added support for EMS CPC-USB/ARM7 CAN/USB interface")
Link: https://lore.kernel.org/all/20220802094021.959858-1-mkl@pengutronix.de
Cc: Gerhard Uttenthaler <uttenthaler@ems-wuensche.com>
Cc: Sebastian Haas <haas@ems-wuensche.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e2b5421', '2022-08-03', 'Linus Torvalds', 'Merge tag \'flexible-array-transformations-UAPI-6.0-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux', 'Merge tag \'flexible-array-transformations-UAPI-6.0-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux

Pull uapi flexible array update from Gustavo Silva:
 "A treewide patch that replaces zero-length arrays with flexible-array
  members in UAPI. This has been baking in linux-next for 5 weeks now.

  \'-fstrict-flex-arrays=3\' is coming and we need to land these changes
  to prevent issues like these in the short future:

    fs/minix/dir.c:337:3: warning: \'strcpy\' will always overflow; destination buffer has size 0, but the source string has length 2 (including NUL byte) [-Wfortify-source]
		strcpy(de3->name, ".");
		^

  Since these are all [0] to [] changes, the risk to UAPI is nearly
  zero. If this breaks anything, we can use a union with a new member
  name"

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101836

* tag \'flexible-array-transformations-UAPI-6.0-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux:
  treewide: uapi: Replace zero-length arrays with flexible-array members
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '43c249e', '2022-07-18', 'Uros Bizjak', 'compiler-gcc.h: remove ancient workaround for gcc PR 58670', 'compiler-gcc.h: remove ancient workaround for gcc PR 58670

The workaround for \'asm goto\' miscompilation introduces a compiler barrier
quirk that inhibits many useful compiler optimizations.  For example,
__try_cmpxchg_user compiles to:

   11375:	41 8b 4d 00          	mov    0x0(%r13),%ecx
   11379:	41 8b 02             	mov    (%r10),%eax
   1137c:	f0 0f b1 0a          	lock cmpxchg %ecx,(%rdx)
   11380:	0f 94 c2             	sete   %dl
   11383:	84 d2                	test   %dl,%dl
   11385:	75 c4                	jne    1134b <...>
   11387:	41 89 02             	mov    %eax,(%r10)

where the barrier inhibits flags propagation from asm when compiled with
gcc-12.

When the mentioned quirk is removed, the following code is generated:

   11553:	41 8b 4d 00          	mov    0x0(%r13),%ecx
   11557:	41 8b 02             	mov    (%r10),%eax
   1155a:	f0 0f b1 0a          	lock cmpxchg %ecx,(%rdx)
   1155e:	74 c9                	je     11529 <...>
   11560:	41 89 02             	mov    %eax,(%r10)

The refered compiler bug:

http://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670

was fixed for gcc-4.8.2.

Current minimum required version of GCC is version 5.1 which has the above
\'asm goto\' miscompilation fixed, so remove the workaround.

Link: https://lkml.kernel.org/r/20220624141412.72274-1-ubizjak@gmail.com
Signed-off-by: Uros Bizjak <ubizjak@gmail.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e5d523f', '2022-07-15', 'Nick Desaulniers', 'ubsan: disable UBSAN_DIV_ZERO for clang', 'ubsan: disable UBSAN_DIV_ZERO for clang

Building with UBSAN_DIV_ZERO with clang produces numerous fallthrough
warnings from objtool.

In the case of uncheck division, UBSAN_DIV_ZERO may introduce new
control flow to check for division by zero.

Because the result of the division is undefined, LLVM may optimize the
control flow such that after the call to __ubsan_handle_divrem_overflow
doesn\'t matter.  If panic_on_warn was set,
__ubsan_handle_divrem_overflow would panic.

The problem is is that panic_on_warn is run time configurable.  If it\'s
disabled, then we cannot guarantee that we will be able to recover
safely.  Disable this config for clang until we can come up with a
solution in LLVM.

Link: https://github.com/ClangBuiltLinux/linux/issues/1657
Link: https://github.com/llvm/llvm-project/issues/56289
Link: https://lore.kernel.org/lkml/CAHk-=wj1qhf7y3VNACEexyp5EbkNpdcu_542k-xZpzmYLOjiCg@mail.gmail.com/
Reported-by: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1b86678', '2022-07-11', 'Nathan Chancellor', 'x86/Kconfig: Fix CONFIG_CC_HAS_SANE_STACKPROTECTOR when cross compiling with clang', 'x86/Kconfig: Fix CONFIG_CC_HAS_SANE_STACKPROTECTOR when cross compiling with clang

Chimera Linux notes that CONFIG_CC_HAS_SANE_STACKPROTECTOR cannot be
enabled when cross compiling an x86_64 kernel with clang, even though it
does work when natively compiling.

When building on aarch64:

  $ make -sj"$(nproc)" ARCH=x86_64 LLVM=1 defconfig

  $ grep STACKPROTECTOR .config

When building on x86_64:

  $ make -sj"$(nproc)" ARCH=x86_64 LLVM=1 defconfig

  $ grep STACKPROTECTOR .config
  CONFIG_CC_HAS_SANE_STACKPROTECTOR=y
  CONFIG_HAVE_STACKPROTECTOR=y
  CONFIG_STACKPROTECTOR=y
  CONFIG_STACKPROTECTOR_STRONG=y

When clang is invoked without a \'--target\' flag, code is generated for
the default target, which is usually the host (it is configurable via
cmake). As a result, the has-stack-protector scripts will generate code
for the default target but check for x86 specific segment registers,
which cannot succeed if the default target is not x86.

$(CLANG_FLAGS) contains an explicit \'--target\' flag so pass that
variable along to the has-stack-protector scripts so that the stack
protector can be enabled when cross compiling with clang. The 32-bit
stack protector cannot currently be enabled with clang, as it does not
support \'-mstack-protector-guard-symbol\', so this results in no
functional change for ARCH=i386 when cross compiling.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Dave Hansen <dave.hansen@linux.intel.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Link: https://github.com/chimera-linux/cports/commit/0fb7e506d5f83fdf2104feb22cdac34934561226
Link: https://github.com/llvm/llvm-project/issues/48553
Link: https://lkml.kernel.org/r/20220617180845.2788442-1-nathan@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1841025', '2022-07-09', 'James Hilliard', 'libbpf: Disable SEC pragma macro on GCC', 'libbpf: Disable SEC pragma macro on GCC

It seems the gcc preprocessor breaks with pragmas when surrounding
__attribute__.

Disable these pragmas on GCC due to upstream bugs see:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=55578
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=90400

Fixes errors like:
error: expected identifier or \'(\' before \'#pragma\'
  106 | SEC("cgroup/bind6")
      | ^~~

error: expected \'=\', \',\', \';\', \'asm\' or \'__attribute__\' before \'#pragma\'
  114 | char _license[] SEC("license") = "GPL";
      | ^~~

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
Signed-off-by: Andrii Nakryiko <andrii@kernel.org>
Link: https://lore.kernel.org/bpf/20220706111839.1247911-1-james.hilliard1@gmail.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e830315', '2022-06-17', 'Nathan Chancellor', 'riscv: Fix ALT_THEAD_PMA\'s asm parameters', 'riscv: Fix ALT_THEAD_PMA\'s asm parameters

After commit a35707c3d850 ("riscv: add memory-type errata for T-Head"),
builds with LLVM\'s integrated assembler fail like:

  In file included from arch/riscv/kernel/asm-offsets.c:10:
  In file included from ./include/linux/mm.h:29:
  In file included from ./include/linux/pgtable.h:6:
  In file included from ./arch/riscv/include/asm/pgtable.h:114:
  ./arch/riscv/include/asm/pgtable-64.h:210:2: error: invalid input constraint \'0\' in asm
          ALT_THEAD_PMA(prot_val);
          ^
  ./arch/riscv/include/asm/errata_list.h:88:4: note: expanded from macro \'ALT_THEAD_PMA\'
          : "0"(_val),                                                    \\
            ^

This was reported upstream to LLVM where Jessica pointed out a couple of
issues with the existing implementation of ALT_THEAD_PMA:

* t3 is modified but not listed in the clobbers list.

* "+r"(_val) marks _val as both an input and output of the asm but then
  "0"(_val) marks _val as an input matching constraint, which does not
  make much sense in this situation, as %1 is not actually used in the
  asm and matching constraints are designed to be used for different
  inputs that need to use the same register.

Drop the matching contraint and shift all the operands by one, as %1 is
unused, and mark t3 as clobbered. This resolves the build error and goes
not cause any problems with GNU as.

Fixes: a35707c3d850 ("riscv: add memory-type errata for T-Head")
Link: https://github.com/ClangBuiltLinux/linux/issues/1641
Link: https://github.com/llvm/llvm-project/issues/55514
Link: https://gcc.gnu.org/onlinedocs/gcc/Simple-Constraints.html
Suggested-by: Jessica Clarke <jrtc27@jrtc27.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Link: https://lore.kernel.org/r/20220518184529.454008-1-nathan@kernel.org
Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'dfe21e6', '2022-06-10', 'Sean Christopherson', 'KVM: x86: Harden _regs accesses to guard against buggy input', 'KVM: x86: Harden _regs accesses to guard against buggy input

WARN and truncate the incoming GPR number/index when reading/writing GPRs
in the emulator to guard against KVM bugs, e.g. to avoid out-of-bounds
accesses to ctxt->_regs[] if KVM generates a bogus index.  Truncate the
index instead of returning e.g. zero, as reg_write() returns a pointer
to the register, i.e. returning zero would result in a NULL pointer
dereference.  KVM could also force the index to any arbitrary GPR, but
that\'s no better or worse, just different.

Open code the restriction to 16 registers; RIP is handled via _eip and
should never be accessed through reg_read() or reg_write().  See the
comments above the declarations of reg_read() and reg_write(), and the
behavior of writeback_registers().  The horrific open coded mess will be
cleaned up in a future commit.

There are no such bugs known to exist in the emulator, but determining
that KVM is bug-free is not at all simple and requires a deep dive into
the emulator.  The code is so convoluted that GCC-12 with the recently
enable -Warray-bounds spits out a false-positive due to a GCC bug:

  arch/x86/kvm/emulate.c:254:27: warning: array subscript 32 is above array
                                 bounds of \'long unsigned int[17]\' [-Warray-bounds]
    254 |         return ctxt->_regs[nr];
        |                ~~~~~~~~~~~^~~~
  In file included from arch/x86/kvm/emulate.c:23:
  arch/x86/kvm/kvm_emulate.h: In function \'reg_rmw\':
  arch/x86/kvm/kvm_emulate.h:366:23: note: while referencing \'_regs\'
    366 |         unsigned long _regs[NR_VCPU_REGS];
        |                       ^~~~~

Link: https://lore.kernel.org/all/YofQlBrlx18J7h9Y@google.com
Link: https://bugzilla.kernel.org/show_bug.cgi?id=216026
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105679
Reported-and-tested-by: Robert Dinse <nanook@eskimo.com>
Reported-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sean Christopherson <seanjc@google.com>
Message-Id: <20220526210817.3428868-3-seanjc@google.com>
Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7e41528', '2022-06-01', 'Murilo Opsfelder Araujo', 'virtio-pci: Remove wrong address verification in vp_del_vqs()', 'virtio-pci: Remove wrong address verification in vp_del_vqs()

GCC 12 enhanced -Waddress when comparing array address to null [0],
which warns:

    drivers/virtio/virtio_pci_common.c: In function ‘vp_del_vqs’:
    drivers/virtio/virtio_pci_common.c:257:29: warning: the comparison will always evaluate as ‘true’ for the pointer operand in ‘vp_dev->msix_affinity_masks + (sizetype)((long unsigned int)i * 256)’ must not be NULL [-Waddress]
      257 |                         if (vp_dev->msix_affinity_masks[i])
          |                             ^~~~~~

In fact, the verification is comparing the result of a pointer
arithmetic, the address "msix_affinity_masks + i", which will always
evaluate to true.

Under the hood, free_cpumask_var() calls kfree(), which is safe to pass
NULL, not requiring non-null verification.  So remove the verification
to make compiler happy (happy compiler, happy life).

[0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102103

Signed-off-by: Murilo Opsfelder Araujo <muriloo@linux.ibm.com>
Message-Id: <20220415023002.49805-1-muriloo@linux.ibm.com>
Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
Acked-by: Christophe de Dinechin <dinechin@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1a6dd99', '2022-05-20', 'Vincent Mailhol', 'can: mcp251xfd: silence clang\'s -Wunaligned-access warning', 'can: mcp251xfd: silence clang\'s -Wunaligned-access warning

clang emits a -Wunaligned-access warning on union
mcp251xfd_tx_ojb_load_buf.

The reason is that field hw_tx_obj (not declared as packed) is being
packed right after a 16 bits field inside a packed struct:

| union mcp251xfd_tx_obj_load_buf {
| 	struct __packed {
| 		struct mcp251xfd_buf_cmd cmd;
| 		  /* ^ 16 bits fields */
| 		struct mcp251xfd_hw_tx_obj_raw hw_tx_obj;
| 		  /* ^ not declared as packed */
| 	} nocrc;
| 	struct __packed {
| 		struct mcp251xfd_buf_cmd_crc cmd;
| 		struct mcp251xfd_hw_tx_obj_raw hw_tx_obj;
| 		__be16 crc;
| 	} crc;
| } ____cacheline_aligned;

Starting from LLVM 14, having an unpacked struct nested in a packed
struct triggers a warning. c.f. [1].

This is a false positive because the field is always being accessed
with the relevant put_unaligned_*() function. Adding __packed to the
structure declaration silences the warning.

[1] https://github.com/llvm/llvm-project/issues/55520

Link: https://lore.kernel.org/all/20220518114357.55452-1-mailhol.vincent@wanadoo.fr
Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Reported-by: kernel test robot <lkp@intel.com>
Tested-by: Nathan Chancellor <nathan@kernel.org> # build
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'aeb8441', '2022-05-19', 'Kees Cook', 'x86/boot: Wrap literal addresses in absolute_pointer()', 'x86/boot: Wrap literal addresses in absolute_pointer()

GCC 11 (incorrectly[1]) assumes that literal values cast to (void *)
should be treated like a NULL pointer with an offset, and raises
diagnostics when doing bounds checking under -Warray-bounds. GCC 12
got "smarter" about finding these:

  In function \'rdfs8\',
      inlined from \'vga_recalc_vertical\' at /srv/code/arch/x86/boot/video-mode.c:124:29,
      inlined from \'set_mode\' at /srv/code/arch/x86/boot/video-mode.c:163:3:
  /srv/code/arch/x86/boot/boot.h:114:9: warning: array subscript 0 is outside array bounds of \'u8[0]\' {aka \'unsigned char[]\'} [-Warray-bounds]
    114 |         asm volatile("movb %%fs:%1,%0" : "=q" (v) : "m" (*(u8 *)addr));
        |         ^~~

This has been solved in other places[2] already by using the recently
added absolute_pointer() macro. Do the same here.

  [1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99578
  [2] https://lore.kernel.org/all/20210912160149.2227137-1-linux@roeck-us.net/

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Link: https://lore.kernel.org/r/20220227195918.705219-1-keescook@chromium.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e9953b7', '2022-05-17', 'Heiko Carstens', 's390/boot: workaround llvm IAS bug', 's390/boot: workaround llvm IAS bug

For at least the mvc and clc instructions llvm\'s integrated assembler can
generate incorrect code. In particular this happens with decompressor boot
code. The reason seems to be that relocations for the second displacement
of each instruction are at incorrect locations (-/+: gas vs llvm IAS):

mvc     __LC_IO_NEW_PSW(16),.Lnewpsw

results in

        4:      d2 0f 01 f0 00 00       mvc     496(16,%r0),0
-                       8: R_390_12     .head.text+0x10
+		       6: R_390_12     .head.text+0x10

and
clc     0(3,%r4),.L_hdr
results in

      258:      d5 02 40 00 00 00       clc     0(3,%r4),0
-                       25c: R_390_12   .head.text+0x324
+		       25a: R_390_12   .head.text+0x324

Workaround this by writing the code in a different way.

Tested-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/llvm/llvm-project/issues/55411
Link: https://lore.kernel.org/r/20220511120532.2228616-7-hca@linux.ibm.com
Signed-off-by: Heiko Carstens <hca@linux.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '95fee37', '2022-04-21', 'Michal Simek', 'microblaze: Do loop unrolling for optimized memset implementation', 'microblaze: Do loop unrolling for optimized memset implementation

Align implementation with memcpy and memmove where also remaining bytes are
copied via final switch case instead of using simple implementations which
loop. But this alignment has much stronger reason and definitely aligning
implementation is not the key point here. It is just good to have in mind
that the same technique is used already there.

In GCC 10, now -ftree-loop-distribute-patterns optimization is on at O2.
This optimization causes GCC to convert the while loop in memset.c into a
call to memset.
So this optimization is transforming a loop in a memset/memcpy into a call
to the function itself. This makes the memset implementation as recursive.
"-freestanding" option will disable the built-in library function but it
has been added in generic library implementation.

In default microblaze kernel defconfig we have CONFIG_OPT_LIB_FUNCTION
enabled so it will always pick optimized version of memset which is target
specific so we are replacing the while() loop with switch case to avoid
recursive memset call.

Issue with freestanding was already discussed in connection to commit
33d0f96ffd73 ("lib/string.c: Use freestanding environment") and also this
is topic in glibc and gcc.
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56888
http://patchwork.ozlabs.org/project/glibc/patch/20191121021040.14554-1-sandra@codesourcery.com/

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Mahesh Bodapati <mbodapat@xilinx.com>
Link: https://lore.kernel.org/r/10a432e269a6d3349cf458e4f5792522779cba0d.1645797329.git.michal.simek@xilinx.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2df3fc4', '2022-04-14', 'Jeremy Linton', 'net: bcmgenet: Revert "Use stronger register read/writes to assure ordering"', 'net: bcmgenet: Revert "Use stronger register read/writes to assure ordering"

It turns out after digging deeper into this bug, that it was being
triggered by GCC12 failing to call the bcmgenet_enable_dma()
routine. Given that a gcc12 fix has been merged [1] and the genet
driver now works properly when built with gcc12, this commit should
be reverted.

[1]
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105160
https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=aabb9a261ef060cf24fd626713f1d7d9df81aa57

Fixes: 8d3ea3d402db ("net: bcmgenet: Use stronger register read/writes to assure ordering")
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Link: https://lore.kernel.org/r/20220412210420.1129430-1-jeremy.linton@arm.com
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1aa0e8b', '2022-04-14', 'Sean Christopherson', 'Kconfig: Add option for asm goto w/ tied outputs to workaround clang-13 bug', 'Kconfig: Add option for asm goto w/ tied outputs to workaround clang-13 bug

Add a config option to guard (future) usage of asm_volatile_goto() that
includes "tied outputs", i.e. "+" constraints that specify both an input
and output parameter.  clang-13 has a bug[1] that causes compilation of
such inline asm to fail, and KVM wants to use a "+m" constraint to
implement a uaccess form of CMPXCHG[2].  E.g. the test code fails with

  <stdin>:1:29: error: invalid operand in inline asm: \'.long (${1:l}) - .\'
  int foo(int *x) { asm goto (".long (%l[bar]) - .\\n": "+m"(*x) ::: bar); return *x; bar: return 0; }
                            ^
  <stdin>:1:29: error: unknown token in expression
  <inline asm>:1:9: note: instantiated into assembly here
          .long () - .
                 ^
  2 errors generated.

on clang-13, but passes on gcc (with appropriate asm goto support).  The
bug is fixed in clang-14, but won\'t be backported to clang-13 as the
changes are too invasive/risky.

gcc also had a similar bug[3], fixed in gcc-11, where gcc failed to
account for its behavior of assigning two numbers to tied outputs (one
for input, one for output) when evaluating symbolic references.

[1] https://github.com/ClangBuiltLinux/linux/issues/1512
[2] https://lore.kernel.org/all/YfMruK8%2F1izZ2VHS@google.com
[3] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98096

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable@vger.kernel.org
Signed-off-by: Sean Christopherson <seanjc@google.com>
Message-Id: <20220202004945.2540433-2-seanjc@google.com>
Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c40160f', '2022-04-13', 'Jason A. Donenfeld', 'gcc-plugins: latent_entropy: use /dev/urandom', 'gcc-plugins: latent_entropy: use /dev/urandom

While the latent entropy plugin mostly doesn\'t derive entropy from
get_random_const() for measuring the call graph, when __latent_entropy is
applied to a constant, then it\'s initialized statically to output from
get_random_const(). In that case, this data is derived from a 64-bit
seed, which means a buffer of 512 bits doesn\'t really have that amount
of compile-time entropy.

This patch fixes that shortcoming by just buffering chunks of
/dev/urandom output and doling it out as requested.

At the same time, it\'s important that we don\'t break the use of
-frandom-seed, for people who want the runtime benefits of the latent
entropy plugin, while still having compile-time determinism. In that
case, we detect whether gcc\'s set_random_seed() has been called by
making a call to get_random_seed(noinit=true) in the plugin init
function, which is called after set_random_seed() is called but before
anything that calls get_random_seed(noinit=false), and seeing if it\'s
zero or not. If it\'s not zero, we\'re in deterministic mode, and so we
just generate numbers with a basic xorshift prng.

Note that we don\'t detect if -frandom-seed is being used using the
documented local_tick variable, because it\'s assigned via:
   local_tick = (unsigned) tv.tv_sec * 1000 + tv.tv_usec / 1000;
which may well overflow and become -1 on its own, and so isn\'t
reliable: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=105171

[kees: The 256 byte rnd_buf size was chosen based on average (250),
 median (64), and std deviation (575) bytes of used entropy for a
 defconfig x86_64 build]

Fixes: 38addce8b600 ("gcc-plugins: Add latent_entropy plugin")
Cc: stable@vger.kernel.org
Cc: PaX Team <pageexec@freemail.hu>
Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20220405222815.21155-1-Jason@zx2c4.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b06a175', '2022-03-27', 'Linus Torvalds', 'Merge tag \'array-bounds-v5.18-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux', 'Merge tag \'array-bounds-v5.18-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux

Pull array-bounds updates from Kees Cook:
 "This enables -Warray-bounds and -Wzero-length-bounds, now that the
  many bug fixes have landed all over the place in the kernel, and in
  GCC itself[1].

  A couple fixes[2] for known corner-case issues currently live in my
  "pending-fixes" tree which I\'m expecting to send next week if other
  maintainers still haven\'t picked them up.

  I\'m also expecting we can enable -Wstringop-overflow next cycle, as
  there are only a few stragglers[3], but it might even be possible for
  this release"

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99578
[2] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=for-next/pending-fixes&id=2d253138910eec553fc706379914243d71de9b85
[3] https://github.com/KSPP/linux/issues/181

* tag \'array-bounds-v5.18-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux:
  Makefile: Enable -Wzero-length-bounds
  Makefile: Enable -Warray-bounds
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b027471', '2022-03-24', 'Marco Elver', 'Revert "ubsan, kcsan: Don\'t combine sanitizer with kcov on clang"', 'Revert "ubsan, kcsan: Don\'t combine sanitizer with kcov on clang"

This reverts commit ea91a1d45d19469001a4955583187b0d75915759.

Since df05c0e9496c ("Documentation: Raise the minimum supported version
of LLVM to 11.0.0") the minimum Clang version is now 11.0, which fixed
the UBSAN/KCSAN vs. KCOV incompatibilities.

Link: https://bugs.llvm.org/show_bug.cgi?id=45831
Link: https://lkml.kernel.org/r/YaodyZzu0MTCJcvO@elver.google.com
Link: https://lkml.kernel.org/r/20220128105631.509772-1-elver@google.com
Signed-off-by: Marco Elver <elver@google.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '281d0c9', '2022-02-14', 'Kees Cook', 'fortify: Add Clang support', 'fortify: Add Clang support

Enable FORTIFY_SOURCE support for Clang:

Use the new __pass_object_size and __overloadable attributes so that
Clang will have appropriate visibility into argument sizes such that
__builtin_object_size(p, 1) will behave correctly. Additional details
available here:
    https://github.com/llvm/llvm-project/issues/53516
    https://github.com/ClangBuiltLinux/linux/issues/1401

A bug with __builtin_constant_p() of globally defined variables was
fixed in Clang 13 (and backported to 12.0.1), so FORTIFY support must
depend on that version or later. Additional details here:
    https://bugs.llvm.org/show_bug.cgi?id=41459
    commit a52f8a59aef4 ("fortify: Explicitly disable Clang support")

A bug with Clang\'s -mregparm=3 and -m32 makes some builtins unusable,
so removing -ffreestanding (to gain the needed libcall optimizations
with Clang) cannot be done. Without the libcall optimizations, Clang
cannot provide appropriate FORTIFY coverage, so it must be disabled
for CONFIG_X86_32. Additional details here;
    https://github.com/llvm/llvm-project/issues/53645

Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: George Burgess IV <gbiv@google.com>
Cc: llvm@lists.linux.dev
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/r/20220208225350.1331628-9-keescook@chromium.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f0202b8', '2022-02-14', 'Kees Cook', 'Compiler Attributes: Add __pass_object_size for Clang', 'Compiler Attributes: Add __pass_object_size for Clang

In order to gain greater visibility to type information when using
__builtin_object_size(), Clang has a function attribute "pass_object_size"
that will make size information available for marked arguments in
a function by way of implicit additional function arguments that are
then wired up the __builtin_object_size().

This is needed to implement FORTIFY_SOURCE in Clang, as a workaround
to Clang\'s __builtin_object_size() having limited visibility[1] into types
across function calls (even inlines).

This attribute has an additional benefit that it can be used even on
non-inline functions to gain argument size information.

[1] https://github.com/llvm/llvm-project/issues/53516

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: llvm@lists.linux.dev
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/r/20220208225350.1331628-3-keescook@chromium.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '545c272', '2022-02-14', 'Kees Cook', 'alpha: Silence -Warray-bounds warnings', 'alpha: Silence -Warray-bounds warnings

GCC 11 (incorrectly[1]) assumes that literal values cast to (void *)
should be treated like a NULL pointer with an offset, and raises
diagnostics when doing bounds checking:

In function \'__memset\',
    inlined from \'__bad_pagetable\' at arch/alpha/mm/init.c:79:2:
./arch/alpha/include/asm/string.h:37:32: error: \'__builtin_memset\' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);
      |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
In function \'__memset\',
    inlined from \'__bad_page\' at arch/alpha/mm/init.c:86:2:
./arch/alpha/include/asm/string.h:37:32: error: \'__builtin_memset\' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);
      |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
In function \'__memset\',
    inlined from \'paging_init\' at arch/alpha/mm/init.c:256:2:
./arch/alpha/include/asm/string.h:37:32: error: \'__builtin_memset\' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);

This has been solved in other places[2] already by using the recently
added absolute_pointer() macro. Do the same here.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99578
[2] https://lore.kernel.org/all/20210912160149.2227137-1-linux@roeck-us.net/

Cc: Richard Henderson <rth@twiddle.net>
Cc: Ivan Kokshaysky <ink@jurassic.park.msu.ru>
Cc: Matt Turner <mattst88@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: linux-alpha@vger.kernel.org
Reviewed-and-tested-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Kees Cook <keescook@chromium.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b53823f', '2022-02-02', 'Mathieu Desnoyers', 'selftests/rseq: Fix: work-around asm goto compiler bugs', 'selftests/rseq: Fix: work-around asm goto compiler bugs

gcc and clang each have their own compiler bugs with respect to asm
goto. Implement a work-around for compiler versions known to have those
bugs.

gcc prior to 4.8.2 miscompiles asm goto.
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670

gcc prior to 8.1.0 miscompiles asm goto at O1.
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=103908

clang prior to version 13.0.1 miscompiles asm goto at O2.
https://github.com/llvm/llvm-project/issues/52735

Work around these issues by adding a volatile inline asm with
memory clobber in the fallthrough after the asm goto and at each
label target.  Emit this for all compilers in case other similar
issues are found in the future.

Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/20220124171253.22072-14-mathieu.desnoyers@efficios.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f23653f', '2022-01-26', 'Maciej W. Rozycki', 'tty: Partially revert the removal of the Cyclades public API', 'tty: Partially revert the removal of the Cyclades public API

Fix a user API regression introduced with commit f76edd8f7ce0 ("tty:
cyclades, remove this orphan"), which removed a part of the API and
caused compilation errors for user programs using said part, such as
GCC 9 in its libsanitizer component[1]:

.../libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:160:10: fatal error: linux/cyclades.h: No such file or directory
  160 | #include <linux/cyclades.h>
      |          ^~~~~~~~~~~~~~~~~~
compilation terminated.
make[4]: *** [Makefile:664: sanitizer_platform_limits_posix.lo] Error 1

As the absolute minimum required bring `struct cyclades_monitor\' and
ioctl numbers back then so as to make the library build again.  Add a
preprocessor warning as to the obsolescence of the features provided.

References:

[1] GCC PR sanitizer/100379, "cyclades.h is removed from linux kernel
    header files", <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100379>

Fixes: f76edd8f7ce0 ("tty: cyclades, remove this orphan")
Cc: stable@vger.kernel.org # v5.13+
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Maciej W. Rozycki <macro@embecosm.com>
Link: https://lore.kernel.org/r/alpine.DEB.2.20.2201260733430.11348@tpp.orcam.me.uk
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd72c4a3', '2021-12-23', 'Daniel Axtens', 'powerpc/64/asm: Do not reassign labels', 'powerpc/64/asm: Do not reassign labels

The LLVM integrated assembler really does not like us reassigning things
to the same label:

<instantiation>:7:9: error: invalid reassignment of non-absolute variable \'fs_label\'

This happens across a bunch of platforms:
https://github.com/ClangBuiltLinux/linux/issues/1043
https://github.com/ClangBuiltLinux/linux/issues/1008
https://github.com/ClangBuiltLinux/linux/issues/920
https://github.com/ClangBuiltLinux/linux/issues/1050

There is no hope of getting this fixed in LLVM (see
https://github.com/ClangBuiltLinux/linux/issues/1043#issuecomment-641571200
and https://bugs.llvm.org/show_bug.cgi?id=47798#c1 )
so if we want to build with LLVM_IAS, we need to hack
around it ourselves.

For us the big problem comes from this:

\\#define USE_FIXED_SECTION(sname)				\\
	fs_label = start_##sname;				\\
	fs_start = sname##_start;				\\
	use_ftsec sname;

\\#define USE_TEXT_SECTION()
	fs_label = start_text;					\\
	fs_start = text_start;					\\
	.text

and in particular fs_label.

This works around it by not setting those \'variables\' and requiring
that users of the variables instead track for themselves what section
they are in. This isn\'t amazing, by any stretch, but it gets us further
in the compilation.

Note that even though users have to keep track of the section, using
a wrong one produces an error with both binutils and llvm which prevents
from using wrong section at the compile time:

llvm error example:

AS      arch/powerpc/kernel/head_64.o
<unknown>:0: error: Cannot represent a difference across sections
make[3]: *** [/home/aik/p/kernels-llvm/llvm/scripts/Makefile.build:388: arch/powerpc/kernel/head_64.o] Error 1

binutils error example:

/home/aik/p/kernels-llvm/llvm/arch/powerpc/kernel/exceptions-64s.S: Assembler messages:
/home/aik/p/kernels-llvm/llvm/arch/powerpc/kernel/exceptions-64s.S:1974: Error: can\'t resolve `system_call_common\' {.text section} - `start_r
eal_vectors\' {.head.text.real_vectors section}
make[3]: *** [/home/aik/p/kernels-llvm/llvm/scripts/Makefile.build:388: arch/powerpc/kernel/head_64.o] Error 1

Signed-off-by: Daniel Axtens <dja@axtens.net>
Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://lore.kernel.org/r/20211221055904.555763-5-aik@ozlabs.ru

');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e463a09', '2021-12-09', 'Peter Zijlstra', 'x86: Add straight-line-speculation mitigation', 'x86: Add straight-line-speculation mitigation

Make use of an upcoming GCC feature to mitigate
straight-line-speculation for x86:

  https://gcc.gnu.org/g:53a643f8568067d7700a9f2facc8ba39974973d3
  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102952
  https://bugs.llvm.org/show_bug.cgi?id=52323

It\'s built tested on x86_64-allyesconfig using GCC-12 and GCC-11.

Maintenance overhead of this should be fairly low due to objtool
validation.

Size overhead of all these additional int3 instructions comes to:

     text	   data	    bss	    dec	    hex	filename
  22267751	6933356	2011368	31212475	1dc43bb	defconfig-build/vmlinux
  22804126	6933356	1470696	31208178	1dc32f2	defconfig-build/vmlinux.sls

Or roughly 2.4% additional text.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Link: https://lore.kernel.org/r/20211204134908.140103474@infradead.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '68cf4f2', '2021-12-08', 'Peter Zijlstra', 'x86: Use -mindirect-branch-cs-prefix for RETPOLINE builds', 'x86: Use -mindirect-branch-cs-prefix for RETPOLINE builds

In order to further enable commit:

  bbe2df3f6b6d ("x86/alternative: Try inline spectre_v2=retpoline,amd")

add the new GCC flag -mindirect-branch-cs-prefix:

  https://gcc.gnu.org/g:2196a681d7810ad8b227bf983f38ba716620545e
  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102952
  https://bugs.llvm.org/show_bug.cgi?id=52323

to RETPOLINE=y builds. This should allow fully inlining retpoline,amd
for GCC builds.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lkml.kernel.org/r/20211119165630.276205624@infradead.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f7e5b9b', '2021-11-30', 'Arnd Bergmann', 'siphash: use _unaligned version by default', 'siphash: use _unaligned version by default

On ARM v6 and later, we define CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
because the ordinary load/store instructions (ldr, ldrh, ldrb) can
tolerate any misalignment of the memory address. However, load/store
double and load/store multiple instructions (ldrd, ldm) may still only
be used on memory addresses that are 32-bit aligned, and so we have to
use the CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS macro with care, or we
may end up with a severe performance hit due to alignment traps that
require fixups by the kernel. Testing shows that this currently happens
with clang-13 but not gcc-11. In theory, any compiler version can
produce this bug or other problems, as we are dealing with undefined
behavior in C99 even on architectures that support this in hardware,
see also https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100363.

Fortunately, the get_unaligned() accessors do the right thing: when
building for ARMv6 or later, the compiler will emit unaligned accesses
using the ordinary load/store instructions (but avoid the ones that
require 32-bit alignment). When building for older ARM, those accessors
will emit the appropriate sequence of ldrb/mov/orr instructions. And on
architectures that can truly tolerate any kind of misalignment, the
get_unaligned() accessors resolve to the leXX_to_cpup accessors that
operate on aligned addresses.

Since the compiler will in fact emit ldrd or ldm instructions when
building this code for ARM v6 or later, the solution is to use the
unaligned accessors unconditionally on architectures where this is
known to be fast. The _aligned version of the hash function is
however still needed to get the best performance on architectures
that cannot do any unaligned access in hardware.

This new version avoids the undefined behavior and should produce
the fastest hash on all architectures we support.

Link: https://lore.kernel.org/linux-arm-kernel/20181008211554.5355-4-ard.biesheuvel@linaro.org/
Link: https://lore.kernel.org/linux-crypto/CAK8P3a2KfmmGDbVHULWevB0hv71P2oi2ZCHEAqT=8dQfa0=cqQ@mail.gmail.com/
Reported-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Fixes: 2c956a60778c ("siphash: add cryptographically secure PRF")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'dee2b70', '2021-11-15', 'Gustavo A. R. Silva', 'kconfig: Add support for -Wimplicit-fallthrough', 'kconfig: Add support for -Wimplicit-fallthrough

Add Kconfig support for -Wimplicit-fallthrough for both GCC and Clang.

The compiler option is under configuration CC_IMPLICIT_FALLTHROUGH,
which is enabled by default.

Special thanks to Nathan Chancellor who fixed the Clang bug[1][2]. This
bugfix only appears in Clang 14.0.0, so older versions still contain
the bug and -Wimplicit-fallthrough won\'t be enabled for them, for now.

This concludes a long journey and now we are finally getting rid
of the unintentional fallthrough bug-class in the kernel, entirely. :)

Link: https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8 [1]
Link: https://bugs.llvm.org/show_bug.cgi?id=51094 [2]
Link: https://github.com/KSPP/linux/issues/115
Link: https://github.com/ClangBuiltLinux/linux/issues/236
Co-developed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Co-developed-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2dc26d9', '2021-11-02', 'Linus Torvalds', 'Merge tag \'overflow-v5.16-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux', 'Merge tag \'overflow-v5.16-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux

Pull overflow updates from Kees Cook:
 "The end goal of the current buffer overflow detection work[0] is to
  gain full compile-time and run-time coverage of all detectable buffer
  overflows seen via array indexing or memcpy(), memmove(), and
  memset(). The str*() family of functions already have full coverage.

  While much of the work for these changes have been on-going for many
  releases (i.e. 0-element and 1-element array replacements, as well as
  avoiding false positives and fixing discovered overflows[1]), this
  series contains the foundational elements of several related buffer
  overflow detection improvements by providing new common helpers and
  FORTIFY_SOURCE changes needed to gain the introspection required for
  compiler visibility into array sizes. Also included are a handful of
  already Acked instances using the helpers (or related clean-ups), with
  many more waiting at the ready to be taken via subsystem-specific
  trees[2].

  The new helpers are:

   - struct_group() for gaining struct member range introspection

   - memset_after() and memset_startat() for clearing to the end of
     structures

   - DECLARE_FLEX_ARRAY() for using flex arrays in unions or alone in
     structs

  Also included is the beginning of the refactoring of FORTIFY_SOURCE to
  support memcpy() introspection, fix missing and regressed coverage
  under GCC, and to prepare to fix the currently broken Clang support.
  Finishing this work is part of the larger series[0], but depends on
  all the false positives and buffer overflow bug fixes to have landed
  already and those that depend on this series to land.

  As part of the FORTIFY_SOURCE refactoring, a set of both a
  compile-time and run-time tests are added for FORTIFY_SOURCE and the
  mem*()-family functions respectively. The compile time tests have
  found a legitimate (though corner-case) bug[6] already.

  Please note that the appearance of "panic" and "BUG" in the
  FORTIFY_SOURCE refactoring are the result of relocating existing code,
  and no new use of those code-paths are expected nor desired.

  Finally, there are two tree-wide conversions for 0-element arrays and
  flexible array unions to gain sane compiler introspection coverage
  that result in no known object code differences.

  After this series (and the changes that have now landed via netdev and
  usb), we are very close to finally being able to build with
  -Warray-bounds and -Wzero-length-bounds.

  However, due corner cases in GCC[3] and Clang[4], I have not included
  the last two patches that turn on these options, as I don\'t want to
  introduce any known warnings to the build. Hopefully these can be
  solved soon"

Link: https://lore.kernel.org/lkml/20210818060533.3569517-1-keescook@chromium.org/ [0]
Link: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/?qt=grep&q=FORTIFY_SOURCE [1]
Link: https://lore.kernel.org/lkml/202108220107.3E26FE6C9C@keescook/ [2]
Link: https://lore.kernel.org/lkml/3ab153ec-2798-da4c-f7b1-81b0ac8b0c5b@roeck-us.net/ [3]
Link: https://bugs.llvm.org/show_bug.cgi?id=51682 [4]
Link: https://lore.kernel.org/lkml/202109051257.29B29745C0@keescook/ [5]
Link: https://lore.kernel.org/lkml/20211020200039.170424-1-keescook@chromium.org/ [6]

* tag \'overflow-v5.16-rc1\' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux: (30 commits)
  fortify: strlen: Avoid shadowing previous locals
  compiler-gcc.h: Define __SANITIZE_ADDRESS__ under hwaddress sanitizer
  treewide: Replace 0-element memcpy() destinations with flexible arrays
  treewide: Replace open-coded flex arrays in unions
  stddef: Introduce DECLARE_FLEX_ARRAY() helper
  btrfs: Use memset_startat() to clear end of struct
  string.h: Introduce memset_startat() for wiping trailing members and padding
  xfrm: Use memset_after() to clear padding
  string.h: Introduce memset_after() for wiping trailing members/padding
  lib: Introduce CONFIG_MEMCPY_KUNIT_TEST
  fortify: Add compile-time FORTIFY_SOURCE tests
  fortify: Allow strlen() and strnlen() to pass compile-time known lengths
  fortify: Prepare to improve strnlen() and strlen() warnings
  fortify: Fix dropped strcpy() compile-time write overflow check
  fortify: Explicitly disable Clang support
  fortify: Move remaining fortify helpers into fortify-string.h
  lib/string: Move helper functions out of string.c
  compiler_types.h: Remove __compiletime_object_size()
  cm4000_cs: Use struct_group() to zero struct cm4000_dev region
  can: flexcan: Use struct_group() to zero struct flexcan_regs regions
  ...
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ecb108e', '2021-10-25', 'Arnd Bergmann', 'ARM: 9144/1: forbid ftrace with clang and thumb2_kernel', 'ARM: 9144/1: forbid ftrace with clang and thumb2_kernel

clang fails to build kernels with THUMB2 and FUNCTION_TRACER
enabled when there is any inline asm statement containing
the frame pointer register r7:

arch/arm/mach-exynos/mcpm-exynos.c:154:2: error: inline asm clobber list contains reserved registers: R7 [-Werror,-Winline-asm]
arch/arm/probes/kprobes/actions-thumb.c:449:3: error: inline asm clobber list contains reserved registers: R7 [-Werror,-Winline-asm]

Apparently gcc should also have warned about this, and the
configuration is actually invalid, though there is some
disagreement on the bug trackers about this.

Link: https://bugs.llvm.org/show_bug.cgi?id=45826
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94986

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '34186b4', '2021-10-05', 'Arnd Bergmann', 'ARM: sharpsl_param: work around -Wstringop-overread warning', 'ARM: sharpsl_param: work around -Wstringop-overread warning

gcc warns that accessing a pointer based on a numeric constant may
be an offset into a NULL pointer, and would therefore has zero
accessible bytes:

arch/arm/common/sharpsl_param.c: In function ‘sharpsl_save_param’:
arch/arm/common/sharpsl_param.c:43:9: error: ‘memcpy’ reading 64 bytes from a region of size 0 [-Werror=stringop-overread]
   43 |         memcpy(&sharpsl_param, param_start(PARAM_BASE), sizeof(struct sharpsl_param_info));
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In this particular case, the warning is bogus since this is the actual
pointer, not an offset on a NULL pointer. Add a local variable to shut
up the warning and hope it doesn\'t come back.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Daniel Mack <daniel@zonque.org>
Cc: Daniel Mack <daniel@zonque.org>
Cc: Haojian Zhuang <haojian.zhuang@gmail.com>
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Linus Walleij <linus.walleij@linaro.org>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99578
Link: https://lore.kernel.org/r/20210927145332.2784005-1-arnd@kernel.org\'
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'eb19efe', '2021-09-28', 'Arnd Bergmann', 'ath11k: Wstringop-overread warning', 'ath11k: Wstringop-overread warning

gcc-11 with the kernel address sanitizer prints a warning for this
driver:

In function \'ath11k_peer_assoc_h_vht\',
    inlined from \'ath11k_peer_assoc_prepare\' at drivers/net/wireless/ath/ath11k/mac.c:1632:2:
drivers/net/wireless/ath/ath11k/mac.c:1164:13: error: \'ath11k_peer_assoc_h_vht_masked\' reading 16 bytes from a region of size 4 [-Werror=stringop-overread]
 1164 |         if (ath11k_peer_assoc_h_vht_masked(vht_mcs_mask))
      |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/wireless/ath/ath11k/mac.c: In function \'ath11k_peer_assoc_prepare\':
drivers/net/wireless/ath/ath11k/mac.c:1164:13: note: referencing argument 1 of type \'const u16 *\' {aka \'const short unsigned int *\'}
drivers/net/wireless/ath/ath11k/mac.c:969:1: note: in a call to function \'ath11k_peer_assoc_h_vht_masked\'
  969 | ath11k_peer_assoc_h_vht_masked(const u16 vht_mcs_mask[NL80211_VHT_NSS_MAX])
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

According to analysis from gcc developers, this is a glitch in the
way gcc tracks the size of struct members. This should really get
fixed in gcc, but it\'s also easy to work around this instance
by changing the function prototype to no include the length of
the array.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99673
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/20210322160253.4032422-5-arnd@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5c34aea', '2021-09-27', 'Ian Rogers', 'perf test: Fix DWARF unwind for optimized builds.', 'perf test: Fix DWARF unwind for optimized builds.

To ensure the stack frames are on the stack tail calls optimizations
need to be inhibited. If your compiler supports an attribute use it,
otherwise use an asm volatile barrier.

The barrier fix was suggested here:
https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
Tested with an optimized clang build and by forcing the asm barrier
route with an optimized clang build.

A GCC bug tracking a proper disable_tail_calls is:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97831

Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
       attribute")

v2. is a rebase. The original fix patch generated quite a lot of
    discussion over the right place for the fix:
    https://lore.kernel.org/lkml/20201114000803.909530-1-irogers@google.com/
    The patch reflects my preference of it being near the use, so that
    future code cleanups don\'t break this somewhat special usage.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20210922173812.456348-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a52f8a5', '2021-09-25', 'Kees Cook', 'fortify: Explicitly disable Clang support', 'fortify: Explicitly disable Clang support

Clang has never correctly compiled the FORTIFY_SOURCE defenses due to
a couple bugs:

	Eliding inlines with matching __builtin_* names
	https://bugs.llvm.org/show_bug.cgi?id=50322

	Incorrect __builtin_constant_p() of some globals
	https://bugs.llvm.org/show_bug.cgi?id=41459

In the process of making improvements to the FORTIFY_SOURCE defenses, the
first (silent) bug (coincidentally) becomes worked around, but exposes
the latter which breaks the build. As such, Clang must not be used with
CONFIG_FORTIFY_SOURCE until at least latter bug is fixed (in Clang 13),
and the fortify routines have been rearranged.

Update the Kconfig to reflect the reality of the current situation.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/lkml/CAKwvOd=A+ueGV2ihdy5GtgR2fQbcXjjAtVxv3=cPjffpebZB7A@mail.gmail.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7d1be0a', '2021-09-25', 'Douglas Anderson', 'drm/edid: Fix EDID quirk compile error on older compilers', 'drm/edid: Fix EDID quirk compile error on older compilers

Apparently some compilers [1] cannot handle doing math on dereferenced
string constants at compile time. This has led to reports [2] of
compile errors like:

  In file included from drivers/gpu/drm/drm_edid.c:42:0:
  ./include/drm/drm_edid.h:525:2: error: initializer element is not constant
    ((((u32)((vend)[0]) - \'@\') & 0x1f) << 26 | \\

Go back to the syntax I used in v4 of the patch series [3] that added
this code instead of what landed (v5). This syntax is slightly uglier
but should be much more compatible with varied compilers.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=69960#c18
[2] https://lore.kernel.org/r/874kaabdt5.fsf@intel.com/
[3] https://lore.kernel.org/r/20210909135838.v4.4.I6103ce2b16e5e5a842b14c7022a034712b434609@changeid/

Fixes: d9f91a10c3e8 ("drm/edid: Allow querying/working with the panel ID from the EDID")
Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reported-by: Srikanth Myakam <smyakam@microsoft.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210924075317.1.I1e58d74d501613f1fe7585958f451160d11b8a98@changeid
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd5f6545', '2021-09-21', 'Linus Torvalds', 'qnx4: work around gcc false positive warning bug', 'qnx4: work around gcc false positive warning bug

In commit b7213ffa0e58 ("qnx4: avoid stringop-overread errors") I tried
to teach gcc about how the directory entry structure can be two
different things depending on a status flag.  It made the code clearer,
and it seemed to make gcc happy.

However, Arnd points to a gcc bug, where despite using two different
members of a union, gcc then gets confused, and uses the size of one of
the members to decide if a string overrun happens.  And not necessarily
the rigth one.

End result: with some configurations, gcc-11 will still complain about
the source buffer size being overread:

  fs/qnx4/dir.c: In function \'qnx4_readdir\':
  fs/qnx4/dir.c:76:32: error: \'strnlen\' specified bound [16, 48] exceeds source size 1 [-Werror=stringop-overread]
     76 |                         size = strnlen(name, size);
        |                                ^~~~~~~~~~~~~~~~~~~
  fs/qnx4/dir.c:26:22: note: source object declared here
     26 |                 char de_name;
        |                      ^~~~~~~

because gcc will get confused about which union member entry is actually
getting accessed, even when the source code is very clear about it.  Gcc
internally will have combined two "redundant" pointers (pointing to
different union elements that are at the same offset), and takes the
size checking from one or the other - not necessarily the right one.

This is clearly a gcc bug, but we can work around it fairly easily.  The
biggest thing here is the big honking comment about why we do what we
do.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99578#c6
Reported-and-tested-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b83a908', '2021-09-09', 'Nick Desaulniers', 'compiler_attributes.h: move __compiletime_{error|warning}', 'compiler_attributes.h: move __compiletime_{error|warning}

Clang 14 will add support for __attribute__((__error__(""))) and
__attribute__((__warning__(""))). To make use of these in
__compiletime_error and __compiletime_warning (as used by BUILD_BUG and
friends) for newer clang and detect/fallback for older versions of
clang, move these to compiler_attributes.h and guard them with
__has_attribute preprocessor guards.

Link: https://reviews.llvm.org/D106030
Link: https://bugs.llvm.org/show_bug.cgi?id=16428
Link: https://github.com/ClangBuiltLinux/linux/issues/1173
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
[Reworded, landed in Clang 14]
Signed-off-by: Miguel Ojeda <ojeda@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c42813b', '2021-09-03', 'Helge Deller', 'parisc: Fix unaligned-access crash in bootloader', 'parisc: Fix unaligned-access crash in bootloader

Kernel v5.14 has various changes to optimize unaligned memory accesses,
e.g. commit 0652035a5794 ("asm-generic: unaligned: remove byteshift helpers").

Those changes triggered an unalignment-exception and thus crashed the
bootloader on parisc because the unaligned "output_len" variable now suddenly
was read word-wise while it was read byte-wise in the past.

Fix this issue by declaring the external output_len variable as char which then
forces the compiler to generate byte-accesses.

Signed-off-by: Helge Deller <deller@gmx.de>
Cc: Arnd Bergmann <arnd@kernel.org>
Cc: John David Anglin <dave.anglin@bell.net>
Bug: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102162
Fixes: 8c031ba63f8f ("parisc: Unbreak bootloader due to gcc-7 optimizations")
Fixes: 0652035a5794 ("asm-generic: unaligned: remove byteshift helpers")
Cc: <stable@vger.kernel.org> # v5.14+
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e432fe9', '2021-09-01', 'Michael Ellerman', 'powerpc/bug: Cast to unsigned long before passing to inline asm', 'powerpc/bug: Cast to unsigned long before passing to inline asm

In commit 1e688dd2a3d6 ("powerpc/bug: Provide better flexibility to
WARN_ON/__WARN_FLAGS() with asm goto") we changed WARN_ON(). Previously
it would take the warning condition, x, and double negate it before
converting the result to int, and passing that int to the underlying
inline asm. ie:

  #define WARN_ON(x) ({
  	int __ret_warn_on = !!(x);
  	if (__builtin_constant_p(__ret_warn_on)) {
  	...
  	} else {
  		BUG_ENTRY(PPC_TLNEI " %4, 0",
  			  BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),
  			  "r" (__ret_warn_on));

The asm then does a full register width comparison with zero and traps
if it is non-zero (PPC_TLNEI).

The new code instead passes the full expression, x, with some arbitrary
type, to the inline asm:

  #define WARN_ON(x) ({
	...
	do {
		if (__builtin_constant_p((x))) {
		...
		} else {
			...
			WARN_ENTRY(PPC_TLNEI " %4, 0",
				   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),
				   __label_warn_on, "r" (x));

As reported[1] by Nathan, when building with clang this can cause
spurious warnings to fire repeatedly at boot:

  WARNING: CPU: 0 PID: 1 at lib/klist.c:62 .klist_add_tail+0x3c/0x110
  Modules linked in:
  CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W         5.14.0-rc7-next-20210825 #1
  NIP:  c0000000007ff81c LR: c00000000090a038 CTR: 0000000000000000
  REGS: c0000000073c32a0 TRAP: 0700   Tainted: G        W          (5.14.0-rc7-next-20210825)
  MSR:  8000000002029032 <SF,VEC,EE,ME,IR,DR,RI>  CR: 22000a40  XER: 00000000
  CFAR: c00000000090a034 IRQMASK: 0
  GPR00: c00000000090a038 c0000000073c3540 c000000001be3200 0000000000000001
  GPR04: c0000000072d65c0 0000000000000000 c0000000091ba798 c0000000091bb0a0
  GPR08: 0000000000000001 0000000000000000 c000000008581918 fffffffffffffc00
  GPR12: 0000000044000240 c000000001dd0000 c000000000012300 0000000000000000
  GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
  GPR20: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
  GPR24: 0000000000000000 c0000000017e3200 0000000000000000 c000000001a0e778
  GPR28: c0000000072d65b0 c0000000072d65a8 c000000007de72c8 c0000000073c35d0
  NIP .klist_add_tail+0x3c/0x110
  LR  .bus_add_driver+0x148/0x290
  Call Trace:
    0xc0000000073c35d0 (unreliable)
    .bus_add_driver+0x148/0x290
    .driver_register+0xb8/0x190
    .__hid_register_driver+0x70/0xd0
    .redragon_driver_init+0x34/0x58
    .do_one_initcall+0x130/0x3b0
    .do_initcall_level+0xd8/0x188
    .do_initcalls+0x7c/0xdc
    .kernel_init_freeable+0x178/0x21c
    .kernel_init+0x34/0x220
    .ret_from_kernel_thread+0x58/0x60
  Instruction dump:
  fba10078 7c7d1b78 38600001 fb810070 3b9d0008 fbc10080 7c9e2378 389d0018
  fb9d0008 fb9d0010 90640000 fbdd0000 <0b1e0000> e87e0018 28230000 41820024

The instruction dump shows that we are trapping because r30 is not zero:
  tdnei   r30,0

Where r30 = c000000007de72c8

The WARN_ON() comes from:

  static void knode_set_klist(struct klist_node *knode, struct klist *klist)
  {
  	knode->n_klist = klist;
  	/* no knode deserves to start its life dead */
  	WARN_ON(knode_dead(knode));
  		      ^^^^^^^^^^^^^^^^^

Where:

  #define KNODE_DEAD		1LU

  static bool knode_dead(struct klist_node *knode)
  {
  	return (unsigned long)knode->n_klist & KNODE_DEAD;
  }

The full disassembly shows that clang has not generated any code to
apply the "& KNODE_DEAD" to the n_klist pointer, which is surprising.

Nathan filed an LLVM bug [2], in which Eli Friedman explained that clang
believes it is only passing a single bit to the asm (ie. a bool) and so
the mask of bit 0 with 1 can be omitted, and suggested that if we want
the full 64-bit value passed to the inline asm we should cast to a
64-bit type (or 32-bit on 32-bits).

In fact we already do that for BUG_ENTRY(), which was added to fix a
possibly similar bug in 2005 in commit 32818c2eb6b8 ("[PATCH] ppc64: Fix
issue with gcc 4.0 compiled kernels").

So cast the value we pass to the inline asm to long.

For GCC this appears to have no effect on code generation, other than
causing sign extension in some cases.

[1]: http://lore.kernel.org/r/YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain
[2]: https://bugs.llvm.org/show_bug.cgi?id=51634

Fixes: 1e688dd2a3d6 ("powerpc/bug: Provide better flexibility to WARN_ON/__WARN_FLAGS() with asm goto")
Reported-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://lore.kernel.org/r/20210901112522.1085134-1-mpe@ellerman.id.au
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '69aa1de', '2021-07-23', 'Kees Cook', 'media: atomisp: Perform a single memset() for union', 'media: atomisp: Perform a single memset() for union

There is no need to memset() both dvs_grid_info and dvs_stat_grid_info
separately: they are part of the same union. Instead, just zero the
union itself. This additionally avoids a false positive (due to a
gcc optimization bug[1]) when building with the coming FORTIFY_SOURCE
improvements:

In function \'fortify_memset_chk\',
    inlined from \'sh_css_pipe_get_grid_info\' at drivers/staging/media/atomisp/pci/sh_css.c:5186:3,
    inlined from \'ia_css_stream_create\' at drivers/staging/media/atomisp/pci/sh_css.c:9442:10:
./include/linux/fortify-string.h:199:4: warning: call to \'__write_overflow_field\' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
  199 |    __write_overflow_field();
      |    ^~~~~~~~~~~~~~~~~~~~~~~~

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101419

Link: https://lore.kernel.org/linux-media/20210711145101.1434065-1-keescook@chromium.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1d74a91', '2021-07-22', 'Kees Cook', 'media: atomisp: Perform a single memset() for union', 'media: atomisp: Perform a single memset() for union

There is no need to memset() both dvs_grid_info and dvs_stat_grid_info
separately: they are part of the same union. Instead, just zero the
union itself. This additionally avoids a false positive (due to a
gcc optimization bug[1]) when building with the coming FORTIFY_SOURCE
improvements:

In function \'fortify_memset_chk\',
    inlined from \'sh_css_pipe_get_grid_info\' at drivers/staging/media/atomisp/pci/sh_css.c:5186:3,
    inlined from \'ia_css_stream_create\' at drivers/staging/media/atomisp/pci/sh_css.c:9442:10:
./include/linux/fortify-string.h:199:4: warning: call to \'__write_overflow_field\' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
  199 |    __write_overflow_field();
      |    ^~~~~~~~~~~~~~~~~~~~~~~~

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101419

Link: https://lore.kernel.org/linux-media/20210711145101.1434065-1-keescook@chromium.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4cad671', '2021-07-03', 'Linus Torvalds', 'Merge tag \'asm-generic-unaligned-5.14\' of git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic', 'Merge tag \'asm-generic-unaligned-5.14\' of git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic

Pull asm/unaligned.h unification from Arnd Bergmann:
 "Unify asm/unaligned.h around struct helper

  The get_unaligned()/put_unaligned() helpers are traditionally
  architecture specific, with the two main variants being the
  "access-ok.h" version that assumes unaligned pointer accesses always
  work on a particular architecture, and the "le-struct.h" version that
  casts the data to a byte aligned type before dereferencing, for
  architectures that cannot always do unaligned accesses in hardware.

  Based on the discussion linked below, it appears that the access-ok
  version is not realiable on any architecture, but the struct version
  probably has no downsides. This series changes the code to use the
  same implementation on all architectures, addressing the few
  exceptions separately"

Link: https://lore.kernel.org/lkml/75d07691-1e4f-741f-9852-38c0b4f520bc@synopsys.com/
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100363
Link: https://lore.kernel.org/lkml/20210507220813.365382-14-arnd@kernel.org/
Link: git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git unaligned-rework-v2
Link: https://lore.kernel.org/lkml/CAHk-=whGObOKruA_bU3aPGZfoDqZM1_9wBkwREp0H0FgR-90uQ@mail.gmail.com/

* tag \'asm-generic-unaligned-5.14\' of git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic:
  asm-generic: simplify asm/unaligned.h
  asm-generic: uaccess: 1-byte access is always aligned
  netpoll: avoid put_unaligned() on single character
  mwifiex: re-fix for unaligned accesses
  apparmor: use get_unaligned() only for multi-byte words
  partitions: msdos: fix one-byte get_unaligned()
  asm-generic: unaligned always use struct helpers
  asm-generic: unaligned: remove byteshift helpers
  powerpc: use linux/unaligned/le_struct.h on LE power7
  m68k: select CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
  sh: remove unaligned access for sh4a
  openrisc: always use unaligned-struct header
  asm-generic: use asm-generic/unaligned.h for most architectures
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '380d53c', '2021-06-23', 'Nick Desaulniers', 'compiler_attributes.h: define __no_profile, add to noinstr', 'compiler_attributes.h: define __no_profile, add to noinstr

noinstr implies that we would like the compiler to avoid instrumenting a
function.  Add support for the compiler attribute
no_profile_instrument_function to compiler_attributes.h, then add
__no_profile to the definition of noinstr.

Link: https://lore.kernel.org/lkml/20210614162018.GD68749@worktop.programming.kicks-ass.net/
Link: https://reviews.llvm.org/D104257
Link: https://reviews.llvm.org/D104475
Link: https://reviews.llvm.org/D104658
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20210621231822.2848305-2-ndesaulniers@google.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '51696f3', '2021-06-22', 'Nathan Chancellor', 'KVM: PPC: Book3S HV: Workaround high stack usage with clang', 'KVM: PPC: Book3S HV: Workaround high stack usage with clang

LLVM does not emit optimal byteswap assembly, which results in high
stack usage in kvmhv_enter_nested_guest() due to the inlining of
byteswap_pt_regs(). With LLVM 12.0.0:

arch/powerpc/kvm/book3s_hv_nested.c:289:6: error: stack frame size of
2512 bytes in function \'kvmhv_enter_nested_guest\' [-Werror,-Wframe-larger-than=]
long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
     ^
1 error generated.

While this gets fixed in LLVM, mark byteswap_pt_regs() as
noinline_for_stack so that it does not get inlined and break the build
due to -Werror by default in arch/powerpc/. Not inlining saves
approximately 800 bytes with LLVM 12.0.0:

arch/powerpc/kvm/book3s_hv_nested.c:290:6: warning: stack frame size of
1728 bytes in function \'kvmhv_enter_nested_guest\' [-Wframe-larger-than=]
long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
     ^
1 warning generated.

Cc: stable@vger.kernel.org # v4.20+
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://github.com/ClangBuiltLinux/linux/issues/1292
Link: https://bugs.llvm.org/show_bug.cgi?id=49610
Link: https://lore.kernel.org/r/202104031853.vDT0Qjqj-lkp@intel.com/
Link: https://gist.github.com/ba710e3703bf45043a31e2806c843ffd
Link: https://lore.kernel.org/r/20210621182440.990242-1-nathan@kernel.org

');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '558f9b2', '2021-06-18', 'YiFei Zhu', 'um: Fix stack pointer alignment', 'um: Fix stack pointer alignment

GCC assumes that stack is aligned to 16-byte on call sites [1].
Since GCC 8, GCC began using 16-byte aligned SSE instructions to
implement assignments to structs on stack. When
CC_OPTIMIZE_FOR_PERFORMANCE is enabled, this affects
os-Linux/sigio.c, write_sigio_thread:

  struct pollfds *fds, tmp;
  tmp = current_poll;

Note that struct pollfds is exactly 16 bytes in size.
GCC 8+ generates assembly similar to:

  movdqa (%rdi),%xmm0
  movaps %xmm0,-0x50(%rbp)

This is an issue, because movaps will #GP if -0x50(%rbp) is not
aligned to 16 bytes [2], and how rbp gets assigned to is via glibc
clone thread_start, then function prologue, going though execution
trace similar to (showing only relevant instructions):

  sub    $0x10,%rsi
  mov    %rcx,0x8(%rsi)
  mov    %rdi,(%rsi)
  syscall
  pop    %rax
  pop    %rdi
  callq  *%rax
  push   %rbp
  mov    %rsp,%rbp

The stack pointer always points to the topmost element on stack,
rather then the space right above the topmost. On push, the
pointer decrements first before writing to the memory pointed to
by it. Therefore, there is no need to have the stack pointer
pointer always point to valid memory unless the stack is poped;
so the `- sizeof(void *)` in the code is unnecessary.

On the other hand, glibc reserves the 16 bytes it needs on stack
and pops itself, so by the call instruction the stack pointer
is exactly the caller-supplied sp. It then push the 16 bytes of
the return address and the saved stack pointer, so the base
pointer will be 16-byte aligned if and only if the caller
supplied sp is 16-byte aligned. Therefore, the caller must supply
a 16-byte aligned pointer, which `stack + UM_KERN_PAGE_SIZE`
already satisfies.

On a side note, musl is unaffected by this issue because it forces
16 byte alignment via `and $-16,%rsi` in its clone wrapper.
Similarly, glibc i386 is also unaffected because it has
`andl $0xfffffff0, %ecx`.

To reproduce this bug, enable CONFIG_UML_RTC and
CC_OPTIMIZE_FOR_PERFORMANCE. uml_rtc will call
add_sigio_fd which will then cause write_sigio_thread to either go
into segfault loop or panic with "Segfault with no mm".

Similarly, signal stacks will be aligned by the host kernel upon
signal delivery. `- sizeof(void *)` to sigaltstack is
unconventional and extraneous.

On a related note, initialization of longjmp buffers do require
`- sizeof(void *)`. This is to account for the return address
that would have been pushed to the stack at the call site.

The reason for uml to respect 16-byte alignment, rather than
telling GCC to assume 8-byte alignment like the host kernel since
commit d9b0cde91c60 ("x86-64, gcc: Use
-mpreferred-stack-boundary=3 if supported"), is because uml links
against libc. There is no reason to assume libc is also compiled
with that flag and assumes 8-byte alignment rather than 16-byte.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=40838
[2] https://c9x.me/x86/html/file_module_x86_id_180.html

Signed-off-by: YiFei Zhu <zhuyifei1999@gmail.com>
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Reviewed-by: Johannes Berg <johannes@sipsolutions.net>
Signed-off-by: Richard Weinberger <richard@nod.at>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f747e66', '2021-05-23', 'Rikard Falkeborn', 'linux/bits.h: fix compilation error with GENMASK', 'linux/bits.h: fix compilation error with GENMASK

GENMASK() has an input check which uses __builtin_choose_expr() to
enable a compile time sanity check of its inputs if they are known at
compile time.

However, it turns out that __builtin_constant_p() does not always return
a compile time constant [0].  It was thought this problem was fixed with
gcc 4.9 [1], but apparently this is not the case [2].

Switch to use __is_constexpr() instead which always returns a compile time
constant, regardless of its inputs.

Link: https://lore.kernel.org/lkml/42b4342b-aefc-a16a-0d43-9f9c0d63ba7a@rasmusvillemoes.dk [0]
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=19449 [1]
Link: https://lore.kernel.org/lkml/1ac7bbc2-45d9-26ed-0b33-bf382b8d858b@I-love.SAKURA.ne.jp [2]
Link: https://lkml.kernel.org/r/20210511203716.117010-1-rikard.falkeborn@gmail.com
Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Reported-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Yury Norov <yury.norov@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2515dd6', '2021-05-11', 'Nick Desaulniers', 'stack: Replace "o" output with "r" input constraint', 'stack: Replace "o" output with "r" input constraint

"o" isn\'t a common asm() constraint to use; it triggers an assertion in
assert-enabled builds of LLVM that it\'s not recognized when targeting
aarch64 (though it appears to fall back to "m"). It\'s fixed in LLVM 13 now,
but there isn\'t really a good reason to use "o" in particular here. To
avoid causing build issues for those using assert-enabled builds of earlier
LLVM versions, the constraint needs changing.

Instead, if the point is to retain the __builtin_alloca(), make ptr appear
to "escape" via being an input to an empty inline asm block. This is
preferable anyways, since otherwise this looks like a dead store.

While the use of "r" was considered in

  https://lore.kernel.org/lkml/202104011447.2E7F543@keescook/

it was only tested as an output (which looks like a dead store, and wasn\'t
sufficient).

Use "r" as an input constraint instead, which behaves correctly across
compilers and architectures.

Fixes: 39218ff4c625 ("stack: Optionally randomize kernel stack offset each syscall")
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Tested-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Link: https://reviews.llvm.org/D100412
Link: https://bugs.llvm.org/show_bug.cgi?id=49956
Link: https://lore.kernel.org/r/20210419231741.4084415-1-keescook@chromium.org

');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '778aaef', '2021-05-10', 'Arnd Bergmann', 'asm-generic: unaligned always use struct helpers', 'asm-generic: unaligned always use struct helpers

As found by Vineet Gupta and Linus Torvalds, gcc has somewhat unexpected
behavior when faced with overlapping unaligned pointers. The kernel\'s
unaligned/access-ok.h header technically invokes undefined behavior
that happens to usually work on the architectures using it, but if the
compiler optimizes code based on the assumption that undefined behavior
doesn\'t happen, it can create output that actually causes data corruption.

A related problem was previously found on 32-bit ARMv7, where most
instructions can be used on unaligned data, but 64-bit ldrd/strd causes
an exception. The workaround was to always use the unaligned/le_struct.h
helper instead of unaligned/access-ok.h, in commit 1cce91dfc8f7 ("ARM:
8715/1: add a private asm/unaligned.h").

The same solution should work on all other architectures as well, so
remove the access-ok.h variant and use the other one unconditionally on
all architectures, picking either the big-endian or little-endian version.

With this, the arm specific header can be removed as well, and the
only file including linux/unaligned/access_ok.h gets moved to including
the normal file.

Fortunately, this made almost no difference to the object code produced
by gcc-11. On x86, s390, powerpc, and arc, the resulting binary appears
to be identical to the previous version, while on arm64 and m68k there
are minimal differences that looks like an optimization pass went into
a different direction, usually using fewer stack spills on the new
version.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100363
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '14b6cff', '2021-05-10', 'Arnd Bergmann', 'staging: rtl8723bs: avoid bogus gcc warning', 'staging: rtl8723bs: avoid bogus gcc warning

gcc gets confused by some of the type casts and produces an
apparently senseless warning about an out-of-bound memcpy to
an unrelated array in the same structure:

drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c: In function \'rtw_cfg80211_ap_set_encryption\':
cc1: error: writing 8 bytes into a region of size 0 [-Werror=stringop-overflow=]
In file included from drivers/staging/rtl8723bs/include/drv_types.h:32,
                 from drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:10:
drivers/staging/rtl8723bs/include/rtw_security.h:98:15: note: at offset [184, 4264] into destination object \'dot11AuthAlgrthm\' of size 4
   98 |         u32   dot11AuthAlgrthm;         /*  802.11 auth, could be open, shared, 8021x and authswitch */
      |               ^~~~~~~~~~~~~~~~
cc1: error: writing 8 bytes into a region of size 0 [-Werror=stringop-overflow=]
drivers/staging/rtl8723bs/include/rtw_security.h:98:15: note: at offset [264, 4344] into destination object \'dot11AuthAlgrthm\' of size 4

This is a known gcc bug, and the patch here is only a workaround,
but the approach of using a temporary variable to hold a pointer
to the key also improves readability in addition to avoiding the
warning, so overall this should still help.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99673
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Link: https://lore.kernel.org/r/20210422152648.2891996-1-arnd@kernel.org
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2ba50da', '2021-04-14', 'Masahiro Yamada', 'kconfig: nconf: get rid of (void) casts from wattrset() calls', 'kconfig: nconf: get rid of (void) casts from wattrset() calls

This reverts commit 10175ba65fde ("nconfig: Silence unused return values
from wattrset").

With this patch applied, recent GCC versions can cleanly build nconf
without "value computed is not used" warnings.

The wattrset() used to be implemented as a macro, like this:

  #define wattrset(win,at) \\
          (NCURSES_OK_ADDR(win) \\
            ? ((win)->_attrs = NCURSES_CAST(attr_t, at), \\
               OK) \\
            : ERR)

The GCC bugzilla [1] reported a false-positive -Wunused-value warning
in a similar test case. It was fixed by GCC 4.4.1.

Let\'s revert that commit, and see if somebody will claim the issue.

[1]: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=39889

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '28aad1c', '2021-04-09', 'Sami Tolvanen', 'module: ensure __cfi_check alignment', 'module: ensure __cfi_check alignment

CONFIG_CFI_CLANG_SHADOW assumes the __cfi_check() function is page
aligned and at the beginning of the .text section. While Clang would
normally align the function correctly, it fails to do so for modules
with no executable code.

This change ensures the correct __cfi_check() location and
alignment. It also discards the .eh_frame section, which Clang can
generate with certain sanitizers, such as CFI.

Link: https://bugs.llvm.org/show_bug.cgi?id=46293
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Jessica Yu <jeyu@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20210408182843.1754385-5-samitolvanen@google.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'cdc34cb', '2021-03-23', 'Arnd Bergmann', 'x86/boot/tboot: Avoid Wstringop-overread-warning', 'x86/boot/tboot: Avoid Wstringop-overread-warning

gcc-11 warns about using string operations on pointers that are
defined at compile time as offsets from a NULL pointer. Unfortunately
that also happens on the result of fix_to_virt(), which is a
compile-time constant for a constant input:

  arch/x86/kernel/tboot.c: In function \'tboot_probe\':
  arch/x86/kernel/tboot.c:70:13: error: \'__builtin_memcmp_eq\' specified bound 16 exceeds source size 0 [-Werror=stringop-overread]
     70 |         if (memcmp(&tboot_uuid, &tboot->uuid, sizeof(tboot->uuid))) {
        |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I hope this can get addressed in gcc-11 before the release.

As a workaround, split up the tboot_probe() function in two halves
to separate the pointer generation from the usage. This is a bit
ugly, and hopefully gcc understands that the code is actually correct
before it learns to peek into the noinline function.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Martin Sebor <msebor@gmail.com>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99578
Link: https://lore.kernel.org/r/20210322160253.4032422-3-arnd@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1e17fb8', '2021-03-10', 'Clement Courbet', 'sched: Optimize __calc_delta()', 'sched: Optimize __calc_delta()

A significant portion of __calc_delta() time is spent in the loop
shifting a u64 by 32 bits. Use `fls` instead of iterating.

This is ~7x faster on benchmarks.

The generic `fls` implementation (`generic_fls`) is still ~4x faster
than the loop.
Architectures that have a better implementation will make use of it. For
example, on x86 we get an additional factor 2 in speed without dedicated
implementation.

On GCC, the asm versions of `fls` are about the same speed as the
builtin. On Clang, the versions that use fls are more than twice as
slow as the builtin. This is because the way the `fls` function is
written, clang puts the value in memory:
https://godbolt.org/z/EfMbYe. This bug is filed at
https://bugs.llvm.org/show_bug.cgi?idI406.

```
name                                   cpu/op
BM_Calc<__calc_delta_loop>             9.57ms Â=B112%
BM_Calc<__calc_delta_generic_fls>      2.36ms Â=B113%
BM_Calc<__calc_delta_asm_fls>          2.45ms Â=B113%
BM_Calc<__calc_delta_asm_fls_nomem>    1.66ms Â=B112%
BM_Calc<__calc_delta_asm_fls64>        2.46ms Â=B113%
BM_Calc<__calc_delta_asm_fls64_nomem>  1.34ms Â=B115%
BM_Calc<__calc_delta_builtin>          1.32ms Â=B111%
```

Signed-off-by: Clement Courbet <courbet@google.com>
Signed-off-by: Josh Don <joshdon@google.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/20210303224653.2579656-1-joshdon@google.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f5b6a74', '2021-02-26', 'Nathan Chancellor', 'vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y', 'vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y

clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:

$ make CC=clang vmlinux
...
ld: warning: orphan section `.eh_frame\' from `init/main.o\' being placed in section `.eh_frame\'
ld: warning: orphan section `.eh_frame\' from `init/version.o\' being placed in section `.eh_frame\'
ld: warning: orphan section `.eh_frame\' from `init/do_mounts.o\' being placed in section `.eh_frame\'
ld: warning: orphan section `.eh_frame\' from `init/do_mounts_initrd.o\' being placed in section `.eh_frame\'
ld: warning: orphan section `.eh_frame\' from `init/initramfs.o\' being placed in section `.eh_frame\'
ld: warning: orphan section `.eh_frame\' from `init/calibrate.o\' being placed in section `.eh_frame\'
ld: warning: orphan section `.eh_frame\' from `init/init_task.o\' being placed in section `.eh_frame\'
...

$ rg "GCOV_KERNEL|GCOV_PROFILE_ALL" .config
CONFIG_GCOV_KERNEL=y
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
CONFIG_GCOV_PROFILE_ALL=y

This was already handled for a couple of other options in
commit d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN\'s unwanted
sections") and there is an open LLVM bug for this issue. Take advantage
of that section for this config as well so that there are no more orphan
warnings.

Link: https://bugs.llvm.org/show_bug.cgi?id=46478
Link: https://github.com/ClangBuiltLinux/linux/issues/1069
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Fixes: d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN\'s unwanted sections")
Cc: stable@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20210130004650.2682422-1-nathan@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd2dcd3e', '2021-02-24', 'Sami Tolvanen', 'x86, cpu: disable LTO for cpu.c', 'x86, cpu: disable LTO for cpu.c

Clang incorrectly inlines functions with differing stack protector
attributes, which breaks __restore_processor_state() that relies on
stack protector being disabled. This change disables LTO for cpu.c
to work aroung the bug.

Link: https://bugs.llvm.org/show_bug.cgi?id=47479
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '105f75e', '2021-02-13', 'Jianlin Lv', 'perf probe: Fix kretprobe issue caused by GCC bug', 'perf probe: Fix kretprobe issue caused by GCC bug

Perf failed to add a kretprobe event with debuginfo of vmlinux which is
compiled by gcc with -fpatchable-function-entry option enabled.  The
same issue with kernel module.

Issue:

  # perf probe  -v \'kernel_clone%return $retval\'
  ......
  Writing event: r:probe/kernel_clone__return _text+599624 $retval
  Failed to write event: Invalid argument
    Error: Failed to add events. Reason: Invalid argument (Code: -22)

  # cat /sys/kernel/debug/tracing/error_log
  [156.75] trace_kprobe: error: Retprobe address must be an function entry
  Command: r:probe/kernel_clone__return _text+599624 $retval
                                        ^

  # llvm-dwarfdump  vmlinux |grep  -A 10  -w 0x00df2c2b
  0x00df2c2b:   DW_TAG_subprogram
                DW_AT_external  (true)
                DW_AT_name      ("kernel_clone")
                DW_AT_decl_file ("/home/code/linux-next/kernel/fork.c")
                DW_AT_decl_line (2423)
                DW_AT_decl_column       (0x07)
                DW_AT_prototyped        (true)
                DW_AT_type      (0x00dcd492 "pid_t")
                DW_AT_low_pc    (0xffff800010092648)
                DW_AT_high_pc   (0xffff800010092b9c)
                DW_AT_frame_base        (DW_OP_call_frame_cfa)

  # cat /proc/kallsyms |grep kernel_clone
  ffff800010092640 T kernel_clone
  # readelf -s vmlinux |grep -i kernel_clone
  183173: ffff800010092640  1372 FUNC    GLOBAL DEFAULT    2 kernel_clone

  # objdump -d vmlinux |grep -A 10  -w \\<kernel_clone\\>:
  ffff800010092640 <kernel_clone>:
  ffff800010092640:       d503201f        nop
  ffff800010092644:       d503201f        nop
  ffff800010092648:       d503233f        paciasp
  ffff80001009264c:       a9b87bfd        stp     x29, x30, [sp, #-128]!
  ffff800010092650:       910003fd        mov     x29, sp
  ffff800010092654:       a90153f3        stp     x19, x20, [sp, #16]

The entry address of kernel_clone converted by debuginfo is _text+599624
(0x92648), which is consistent with the value of DW_AT_low_pc attribute.
But the symbolic address of kernel_clone from /proc/kallsyms is
ffff800010092640.

This issue is found on arm64, -fpatchable-function-entry=2 is enabled when
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y;
Just as objdump displayed the assembler contents of kernel_clone,
GCC generate 2 NOPs  at the beginning of each function.

kprobe_on_func_entry detects that (_text+599624) is not the entry address
of the function, which leads to the failure of adding kretprobe event.

  kprobe_on_func_entry
  ->_kprobe_addr
  ->kallsyms_lookup_size_offset
  ->arch_kprobe_on_func_entry		// FALSE

The cause of the issue is that the first instruction in the compile unit
indicated by DW_AT_low_pc does not include NOPs.
This issue exists in all gcc versions that support
-fpatchable-function-entry option.

I have reported it to the GCC community:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98776

Currently arm64 and PA-RISC may enable fpatchable-function-entry option.
The kernel compiled with clang does not have this issue.

FIX:

This GCC issue only cause the registration failure of the kretprobe event
which doesn\'t need debuginfo. So, stop using debuginfo for retprobe.
map will be used to query the probe function address.

Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: clang-built-linux@googlegroups.com
Cc: Frank Ch. Eigler <fche@redhat.com>
Cc: Ian Rogers <irogers@google.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Sumanth Korikkar <sumanthk@linux.ibm.com>
Link: http://lore.kernel.org/lkml/20210210062646.2377995-1-Jianlin.Lv@arm.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5857c92', '2021-01-21', 'Will Deacon', 'mm: Mark anonymous struct field of \'struct vm_fault\' as \'const\'', 'mm: Mark anonymous struct field of \'struct vm_fault\' as \'const\'

The fields of this struct are only ever read after being initialised, so
mark it \'const\' before somebody tries to modify it again. GCC will then
complain (with an error) about modification of these fields after they
have been initialised, although LLVM currently allows them without even
a warning:

https://bugs.llvm.org/show_bug.cgi?id=48755

Hopefully, future versions of LLVM will emit a warning.

Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2f78788', '2020-12-16', 'Jakub Jelinek', 'ilog2: improve ilog2 for constant arguments', 'ilog2: improve ilog2 for constant arguments

As discussed in https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97445 the
const_ilog2 macro generates a lot of code which interferes badly with GCC
inlining heuristics, until it can be proven that the ilog2 argument can or
can\'t be simplified into a constant.

It can be expressed using __builtin_clzll builtin which is supported by
GCC 3.4 and later and when used only in the __builtin_constant_p guarded
code it ought to always fold back to a constant.  Other compilers support
the same builtin for many years too.

Other option would be to change the const_ilog2 macro, though as the
description says it is meant to be used also in C constant expressions,
and while GCC will fold it to constant with constant argument even in
those, perhaps it is better to avoid using extensions in that case.

[akpm@linux-foundation.org: coding style fixes]

Link: https://lkml.kernel.org/r/20201120125154.GB3040@hirez.programming.kicks-ass.net
Link: https://lkml.kernel.org/r/20201021132718.GB2176@tucnak
Signed-off-by: Jakub Jelinek <jakub@redhat.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a9ffd04', '2020-11-28', 'Masami Hiramatsu', 'perf probe: Change function definition check due to broken DWARF', 'perf probe: Change function definition check due to broken DWARF

Since some gcc generates a broken DWARF which lacks DW_AT_declaration
attribute from the subprogram DIE of function prototype.
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97060)

So, in addition to the DW_AT_declaration check, we also check the
subprogram DIE has DW_AT_inline or actual entry pc.

Committer testing:

  # cat /etc/fedora-release
  Fedora release 33 (Thirty Three)
  #

Before:

  # perf test vfs_getname
  78: Use vfs_getname probe to get syscall args filenames             : FAILED!
  79: Check open filename arg using perf trace + vfs_getname          : FAILED!
  81: Add vfs_getname probe to get syscall args filenames             : FAILED!
  #

After:

  # perf test vfs_getname
  78: Use vfs_getname probe to get syscall args filenames             : Ok
  79: Check open filename arg using perf trace + vfs_getname          : Ok
  81: Add vfs_getname probe to get syscall args filenames             : Ok
  #

Reported-by: Thomas Richter <tmricht@linux.ibm.com>
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Sumanth Korikkar <sumanthk@linux.ibm.com>
Link: http://lore.kernel.org/lkml/160645613571.2824037.7441351537890235895.stgit@devnote2
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b96fab4', '2020-11-11', 'Arnd Bergmann', 'ath9k: work around false-positive gcc warning', 'ath9k: work around false-positive gcc warning

gcc-10 shows a false-positive warning with CONFIG_KASAN:

drivers/net/wireless/ath/ath9k/dynack.c: In function \'ath_dynack_sample_tx_ts\':
include/linux/etherdevice.h:290:14: warning: writing 4 bytes into a region of size 0 [-Wstringop-overflow=]
  290 |  *(u32 *)dst = *(const u32 *)src;
      |  ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~

Until gcc is fixed, work around this by using memcpy() in place
of ether_addr_copy(). Hopefully gcc-11 will not have this problem.

Link: https://godbolt.org/z/sab1MK
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97490
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
[kvalo@codeaurora.org: remove ifdef and add a comment]
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/20201026213040.3889546-8-arnd@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4169e88', '2020-10-30', 'Gustavo A. R. Silva', 'include: jhash/signal: Fix fall-through warnings for Clang', 'include: jhash/signal: Fix fall-through warnings for Clang

In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
add break statements instead of letting the code fall through to the
next case.

This patch adds four break statements that, together, fix almost 40,000
warnings when building Linux 5.10-rc1 with Clang 12.0.0 and this[1] change
reverted. Notice that in order to enable -Wimplicit-fallthrough for Clang,
such change[1] is meant to be reverted at some point. So, this patch helps
to move in that direction.

Something important to mention is that there is currently a discrepancy
between GCC and Clang when dealing with switch fall-through to empty case
statements or to cases that only contain a break/continue/return
statement[2][3][4].

Now that the -Wimplicit-fallthrough option has been globally enabled[5],
any compiler should really warn on missing either a fallthrough annotation
or any of the other case-terminating statements (break/continue/return/
goto) when falling through to the next case statement. Making exceptions
to this introduces variation in case handling which may continue to lead
to bugs, misunderstandings, and a general lack of robustness. The point
of enabling options like -Wimplicit-fallthrough is to prevent human error
and aid developers in spotting bugs before their code is even built/
submitted/committed, therefore eliminating classes of bugs. So, in order
to really accomplish this, we should, and can, move in the direction of
addressing any error-prone scenarios and get rid of the unintentional
fallthrough bug-class in the kernel, entirely, even if there is some minor
redundancy. Better to have explicit case-ending statements than continue to
have exceptions where one must guess as to the right result. The compiler
will eliminate any actual redundancy.

[1] commit e2079e93f562c ("kbuild: Do not enable -Wimplicit-fallthrough for clang for now")
[2] https://github.com/ClangBuiltLinux/linux/issues/636
[3] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91432
[4] https://godbolt.org/z/xgkvIh
[5] commit a035d552a93b ("Makefile: Globally enable fall-through warning")

Co-developed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4d6fb34', '2020-10-14', 'Nick Desaulniers', 'export.h: fix section name for CONFIG_TRIM_UNUSED_KSYMS for Clang', 'export.h: fix section name for CONFIG_TRIM_UNUSED_KSYMS for Clang

When enabling CONFIG_TRIM_UNUSED_KSYMS, the linker will warn about the
orphan sections:

(".discard.ksym") is being placed in \'".discard.ksym"\'

repeatedly when linking vmlinux.  This is because the stringification
operator, `#`, in the preprocessor escapes strings.  GCC and Clang differ
in how they treat section names that contain \\".

The portable solution is to not use a string literal with the preprocessor
stringification operator.

Fixes: commit bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Matthias Maennich <maennich@google.com>
Cc: Jessica Yu <jeyu@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Will Deacon <will@kernel.org>
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://github.com/ClangBuiltLinux/linux/issues/1166
Link: https://lkml.kernel.org/r/20200929190701.398762-1-ndesaulniers@google.com
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a25c13b', '2020-10-14', 'Nick Desaulniers', 'compiler.h: avoid escaped section names', 'compiler.h: avoid escaped section names

The stringification operator, `#`, in the preprocessor escapes strings.
For example, `# "foo"` becomes `"\\"foo\\""`.  GCC and Clang differ in how
they treat section names that contain \\".

The portable solution is to not use a string literal with the preprocessor
stringification operator.

In this case, since __section unconditionally uses the stringification
operator, we actually want the more verbose
__attribute__((__section__())).

Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://lkml.kernel.org/r/20200929194318.548707-1-ndesaulniers@google.com
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'fb08334', '2020-10-02', 'Nick Desaulniers', 'nfs: remove incorrect fallthrough label', 'nfs: remove incorrect fallthrough label

There is no case after the default from which to fallthrough to. Clang
will error in this case (unhelpfully without context, see link below)
and GCC will with -Wswitch-unreachable.

The previous commit should have just replaced the comment with a break
statement.

If we consider implicit fallthrough to be a design mistake of C, then
all case statements should be terminated with one of the following
statements:
* break
* continue
* return
* fallthrough
* goto
* (call of function with __attribute__(__noreturn__))

Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
Link: https://bugs.llvm.org/show_bug.cgi?id=47539
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Miaohe Lin <linmiaohe@huawei.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Anna Schumaker <Anna.Schumaker@Netapp.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'aa5cacd', '2020-10-01', 'Arvind Sankar', 'x86/asm: Replace __force_order with a memory clobber', 'x86/asm: Replace __force_order with a memory clobber

The CRn accessor functions use __force_order as a dummy operand to
prevent the compiler from reordering CRn reads/writes with respect to
each other.

The fact that the asm is volatile should be enough to prevent this:
volatile asm statements should be executed in program order. However GCC
4.9.x and 5.x have a bug that might result in reordering. This was fixed
in 8.1, 7.3 and 6.5. Versions prior to these, including 5.x and 4.9.x,
may reorder volatile asm statements with respect to each other.

There are some issues with __force_order as implemented:
- It is used only as an input operand for the write functions, and hence
  doesn\'t do anything additional to prevent reordering writes.
- It allows memory accesses to be cached/reordered across write
  functions, but CRn writes affect the semantics of memory accesses, so
  this could be dangerous.
- __force_order is not actually defined in the kernel proper, but the
  LLVM toolchain can in some cases require a definition: LLVM (as well
  as GCC 4.9) requires it for PIE code, which is why the compressed
  kernel has a definition, but also the clang integrated assembler may
  consider the address of __force_order to be significant, resulting in
  a reference that requires a definition.

Fix this by:
- Using a memory clobber for the write functions to additionally prevent
  caching/reordering memory accesses across CRn writes.
- Using a dummy input operand with an arbitrary constant address for the
  read functions, instead of a global variable. This will prevent reads
  from being reordered across writes, while allowing memory loads to be
  cached/reordered across CRn reads, which should be safe.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602
Link: https://lore.kernel.org/lkml/20200527135329.1172644-1-arnd@arndb.de/
Link: https://lkml.kernel.org/r/20200902232152.3709896-1-nivedita@alum.mit.edu
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1e1b6d6', '2020-09-27', 'Nick Desaulniers', 'lib/string.c: implement stpcpy', 'lib/string.c: implement stpcpy

LLVM implemented a recent "libcall optimization" that lowers calls to
`sprintf(dest, "%s", str)` where the return value is used to
`stpcpy(dest, str) - dest`.

This generally avoids the machinery involved in parsing format strings.
`stpcpy` is just like `strcpy` except it returns the pointer to the new
tail of `dest`.  This optimization was introduced into clang-12.

Implement this so that we don\'t observe linkage failures due to missing
symbol definitions for `stpcpy`.

Similar to last year\'s fire drill with: commit 5f074f3e192f
("lib/string.c: implement a basic bcmp")

The kernel is somewhere between a "freestanding" environment (no full
libc) and "hosted" environment (many symbols from libc exist with the
same type, function signature, and semantics).

As Peter Anvin notes, there\'s not really a great way to inform the
compiler that you\'re targeting a freestanding environment but would like
to opt-in to some libcall optimizations (see pr/47280 below), rather
than opt-out.

Arvind notes, -fno-builtin-* behaves slightly differently between GCC
and Clang, and Clang is missing many __builtin_* definitions, which I
consider a bug in Clang and am working on fixing.

Masahiro summarizes the subtle distinction between compilers justly:
  To prevent transformation from foo() into bar(), there are two ways in
  Clang to do that; -fno-builtin-foo, and -fno-builtin-bar.  There is
  only one in GCC; -fno-buitin-foo.

(Any difference in that behavior in Clang is likely a bug from a missing
__builtin_* definition.)

Masahiro also notes:
  We want to disable optimization from foo() to bar(),
  but we may still benefit from the optimization from
  foo() into something else. If GCC implements the same transform, we
  would run into a problem because it is not -fno-builtin-bar, but
  -fno-builtin-foo that disables that optimization.

  In this regard, -fno-builtin-foo would be more future-proof than
  -fno-built-bar, but -fno-builtin-foo is still potentially overkill. We
  may want to prevent calls from foo() being optimized into calls to
  bar(), but we still may want other optimization on calls to foo().

It seems that compilers today don\'t quite provide the fine grain control
over which libcall optimizations pseudo-freestanding environments would
prefer.

Finally, Kees notes that this interface is unsafe, so we should not
encourage its use.  As such, I\'ve removed the declaration from any
header, but it still needs to be exported to avoid linkage errors in
modules.

Reported-by: Sami Tolvanen <samitolvanen@google.com>
Suggested-by: Andy Lavr <andy.lavr@gmail.com>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Joe Perches <joe@perches.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: <stable@vger.kernel.org>
Link: https://lkml.kernel.org/r/20200914161643.938408-1-ndesaulniers@google.com
Link: https://bugs.llvm.org/show_bug.cgi?id=47162
Link: https://bugs.llvm.org/show_bug.cgi?id=47280
Link: https://github.com/ClangBuiltLinux/linux/issues/1126
Link: https://man7.org/linux/man-pages/man3/stpcpy.3.html
Link: https://pubs.opengroup.org/onlinepubs/9699919799/functions/stpcpy.html
Link: https://reviews.llvm.org/D85963
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e2179a0', '2020-09-01', 'Kees Cook', 'efi/libstub: Disable -mbranch-protection', 'efi/libstub: Disable -mbranch-protection

In preparation for adding --orphan-handling=warn to more architectures,
disable -mbranch-protection, as EFI does not yet support it[1].  This was
noticed due to it producing unwanted .note.gnu.property sections (prefixed
with .init due to the objcopy build step).

However, we must also work around a bug in Clang where the section is
still emitted for code-less object files[2], so also remove the section
during the objcopy.

[1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
[2] https://bugs.llvm.org/show_bug.cgi?id=46480

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200821194310.3089815-8-keescook@chromium.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd812db7', '2020-09-01', 'Kees Cook', 'vmlinux.lds.h: Avoid KASAN and KCSAN\'s unwanted sections', 'vmlinux.lds.h: Avoid KASAN and KCSAN\'s unwanted sections

KASAN (-fsanitize=kernel-address) and KCSAN (-fsanitize=thread)
produce unwanted[1] .eh_frame and .init_array.* sections. Add them to
COMMON_DISCARDS, except with CONFIG_CONSTRUCTORS, which wants to keep
.init_array.* sections.

[1] https://bugs.llvm.org/show_bug.cgi?id=46478

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Marco Elver <elver@google.com>
Cc: linux-arch@vger.kernel.org
Link: https://lore.kernel.org/r/20200821194310.3089815-4-keescook@chromium.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '33d0f96', '2020-08-20', 'Arvind Sankar', 'lib/string.c: Use freestanding environment', 'lib/string.c: Use freestanding environment

gcc can transform the loop in a naive implementation of memset/memcpy
etc into a call to the function itself.  This optimization is enabled by
-ftree-loop-distribute-patterns.

This has been the case for a while, but gcc-10.x enables this option at
-O2 rather than -O3 as in previous versions.

Add -ffreestanding, which implicitly disables this optimization with
gcc.  It is unclear whether clang performs such optimizations, but
hopefully it will also not do so in a freestanding environment.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56888
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6d25a63', '2020-07-31', 'Nick Terrell', 'lib: Prepare zstd for preboot environment, improve performance', 'lib: Prepare zstd for preboot environment, improve performance

These changes are necessary to get the build to work in the preboot
environment, and to get reasonable performance:

- Remove a double definition of the CHECK_F macro when the zstd
  library is amalgamated.

- Switch ZSTD_copy8() to __builtin_memcpy(), because in the preboot
  environment on x86 gcc can\'t inline `memcpy()` otherwise.

- Limit the gcc hack in ZSTD_wildcopy() to the broken gcc version. See
  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81388.

ZSTD_copy8() and ZSTD_wildcopy() are in the core of the zstd hot loop.
So outlining these calls to memcpy(), and having an extra branch are very
detrimental to performance.

Signed-off-by: Nick Terrell <terrelln@fb.com>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20200730190841.2071656-2-nickrterrell@gmail.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '158807d', '2020-07-23', 'Nick Desaulniers', 'x86/uaccess: Make __get_user_size() Clang compliant on 32-bit', 'x86/uaccess: Make __get_user_size() Clang compliant on 32-bit

Clang fails to compile __get_user_size() on 32-bit for the following code:

      long long val;

      __get_user(val, usrptr);

with: error: invalid output size for constraint \'=q\'

GCC compiles the same code without complaints.

The reason is that GCC and Clang are architecturally different, which leads
to subtle issues for code that\'s invalid but clearly dead, i.e. with code
that emulates polymorphism with the preprocessor and sizeof.

GCC will perform semantic analysis after early inlining and dead code
elimination, so it will not warn on invalid code that\'s dead. Clang
strictly performs optimizations after semantic analysis, so it will warn
for dead code.

Neither Clang nor GCC like this very much with -m32:

long long ret;
asm ("movb $5, %0" : "=q" (ret));

However, GCC can tolerate this variant:

long long ret;
switch (sizeof(ret)) {
case 1:
        asm ("movb $5, %0" : "=q" (ret));
        break;
case 8:;
}

Clang, on the other hand, won\'t accept that because it validates the inline
asm for the \'1\' case before the optimisation phase where it realises that
it wouldn\'t have to emit it anyway.

If LLVM (Clang\'s "back end") fails such as during instruction selection or
register allocation, it cannot provide accurate diagnostics (warnings /
errors) that contain line information, as the AST has been discarded from
memory at that point.

While there have been early discussions about having C/C++ specific
language optimizations in Clang via the use of MLIR, which would enable
such earlier optimizations, such work is not scoped and likely a multi-year
endeavor.

It was discussed to change the asm output constraint for the one byte case
from "=q" to "=r". While it works for 64-bit, it fails on 32-bit. With \'=r\'
the compiler could fail to chose a register accessible as high/low which is
required for the byte operation. If that happens the assembly will fail.

Use a local temporary variable of type \'unsigned char\' as output for the
byte copy inline asm and then assign it to the real output variable. This
prevents Clang from failing the semantic analysis in the above case.

The resulting code for the actual one byte copy is not affected as the
temporary variable is optimized out.

[ tglx: Amended changelog ]

Reported-by: Arnd Bergmann <arnd@arndb.de>
Reported-by: David Woodhouse <dwmw2@infradead.org>
Reported-by: Dmitry Golovin <dima@golovin.in>
Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Acked-by: Dennis Zhou <dennis@kernel.org>
Link: https://bugs.llvm.org/show_bug.cgi?id=33587
Link: https://github.com/ClangBuiltLinux/linux/issues/3
Link: https://github.com/ClangBuiltLinux/linux/issues/194
Link: https://github.com/ClangBuiltLinux/linux/issues/781
Link: https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
Link: https://lore.kernel.org/lkml/CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com/
Link: https://lkml.kernel.org/r/20200720204925.3654302-12-ndesaulniers@google.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '3347c8a', '2020-07-09', 'Sedat Dilek', 'crypto: aesni - Fix build with LLVM_IAS=1', 'crypto: aesni - Fix build with LLVM_IAS=1

When building with LLVM_IAS=1 means using Clang\'s Integrated Assembly (IAS)
from LLVM/Clang >= v10.0.1-rc1+ instead of GNU/as from GNU/binutils
I see the following breakage in Debian/testing AMD64:

<instantiation>:15:74: error: too many positional arguments
 PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
                                                                         ^
 arch/x86/crypto/aesni-intel_asm.S:1598:2: note: while in macro instantiation
 GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
 ^
<instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
 GHASH_4_ENCRYPT_4_PARALLEL_dec %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
 ^
arch/x86/crypto/aesni-intel_asm.S:1599:2: note: while in macro instantiation
 GCM_ENC_DEC dec
 ^
<instantiation>:15:74: error: too many positional arguments
 PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
                                                                         ^
arch/x86/crypto/aesni-intel_asm.S:1686:2: note: while in macro instantiation
 GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
 ^
<instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
 GHASH_4_ENCRYPT_4_PARALLEL_enc %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
 ^
arch/x86/crypto/aesni-intel_asm.S:1687:2: note: while in macro instantiation
 GCM_ENC_DEC enc

Craig Topper suggested me in ClangBuiltLinux issue #1050:

> I think the "too many positional arguments" is because the parser isn\'t able
> to handle the trailing commas.
>
> The "unknown use of instruction mnemonic" is because the macro was named
> GHASH_4_ENCRYPT_4_PARALLEL_DEC but its being instantiated with
> GHASH_4_ENCRYPT_4_PARALLEL_dec I guess gas ignores case on the
> macro instantiation, but llvm doesn\'t.

First, I removed the trailing comma in the PRECOMPUTE line.

Second, I substituted:
1. GHASH_4_ENCRYPT_4_PARALLEL_DEC -> GHASH_4_ENCRYPT_4_PARALLEL_dec
2. GHASH_4_ENCRYPT_4_PARALLEL_ENC -> GHASH_4_ENCRYPT_4_PARALLEL_enc

With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.

I confirmed that this works with Linux-kernel v5.7.5 final.

NOTE: This patch is on top of Linux v5.7 final.

Thanks to Craig and especially Nick for double-checking and his comments.

Suggested-by: Craig Topper <craig.topper@intel.com>
Suggested-by: Craig Topper <craig.topper@gmail.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1050
Link: https://bugs.llvm.org/show_bug.cgi?id=24494
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'acf7b0b', '2020-06-25', 'Marco Elver', 'kasan: Fix required compiler version', 'kasan: Fix required compiler version

The first working GCC version to satisfy
CC_HAS_WORKING_NOSANITIZE_ADDRESS is GCC 8.3.0.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=89124
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Marco Elver <elver@google.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/20200623112448.GA208112@elver.google.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f0fe00d', '2020-06-16', 'glider@google.com', 'security: allow using Clang\'s zero initialization for stack variables', 'security: allow using Clang\'s zero initialization for stack variables

In addition to -ftrivial-auto-var-init=pattern (used by
CONFIG_INIT_STACK_ALL now) Clang also supports zero initialization for
locals enabled by -ftrivial-auto-var-init=zero. The future of this flag
is still being debated (see https://bugs.llvm.org/show_bug.cgi?id=45497).
Right now it is guarded by another flag,
-enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang,
which means it may not be supported by future Clang releases. Another
possible resolution is that -ftrivial-auto-var-init=zero will persist
(as certain users have already started depending on it), but the name
of the guard flag will change.

In the meantime, zero initialization has proven itself as a good
production mitigation measure against uninitialized locals. Unlike pattern
initialization, which has a higher chance of triggering existing bugs,
zero initialization provides safe defaults for strings, pointers, indexes,
and sizes. On the other hand, pattern initialization remains safer for
return values. Chrome OS and Android are moving to using zero
initialization for production builds.

Performance-wise, the difference between pattern and zero initialization
is usually negligible, although the generated code for zero
initialization is more compact.

This patch renames CONFIG_INIT_STACK_ALL to CONFIG_INIT_STACK_ALL_PATTERN
and introduces another config option, CONFIG_INIT_STACK_ALL_ZERO, that
enables zero initialization for locals if the corresponding flags are
supported by Clang.

Cc: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Alexander Potapenko <glider@google.com>
Link: https://lore.kernel.org/r/20200616083435.223038-1-glider@google.com
Reviewed-by: Maciej Żenczykowski <maze@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ea91a1d', '2020-06-12', 'Arnd Bergmann', 'ubsan, kcsan: Don\'t combine sanitizer with kcov on clang', 'ubsan, kcsan: Don\'t combine sanitizer with kcov on clang

Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
with -fsanitize=bounds or with ubsan:

  clang: error: argument unused during compilation: \'-fsanitize-coverage=trace-pc\' [-Werror,-Wunused-command-line-argument]
  clang: error: argument unused during compilation: \'-fsanitize-coverage=trace-cmp\' [-Werror,-Wunused-command-line-argument]

To avoid the warning, check whether clang can handle this correctly or
disallow ubsan and kcsan when kcov is enabled.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Marco Elver <elver@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Acked-by: Marco Elver <elver@google.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://bugs.llvm.org/show_bug.cgi?id=45831
Link: https://lore.kernel.org/lkml/20200505142341.1096942-1-arnd@arndb.de
Link: https://lkml.kernel.org/r/20200521142047.169334-2-elver@google.com



');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b3b6a84', '2020-05-28', 'Arnd Bergmann', 'bridge: multicast: work around clang bug', 'bridge: multicast: work around clang bug

Clang-10 and clang-11 run into a corner case of the register
allocator on 32-bit ARM, leading to excessive stack usage from
register spilling:

net/bridge/br_multicast.c:2422:6: error: stack frame size of 1472 bytes in function \'br_multicast_get_stats\' [-Werror,-Wframe-larger-than=]

Work around this by marking one of the internal functions as
noinline_for_stack.

Link: https://bugs.llvm.org/show_bug.cgi?id=45802#c9
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '3a88d7c', '2020-05-12', 'Will Deacon', 'arm64: kconfig: Update and comment GCC version check for kernel BTI', 'arm64: kconfig: Update and comment GCC version check for kernel BTI

Some versions of GCC are known to suffer from a BTI code generation bug,
meaning that CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI cannot be solely used
to determine whether or not we can compile with kernel with BTI enabled.

Update the BTI Kconfig entry to refer to the relevant GCC bugzilla entry
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697) and update the check
now that the fix has been merged into GCC release 10.1.

Acked-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '08afb43', '2020-05-06', 'Arnd Bergmann', 'mwifiex: avoid -Wstringop-overflow warning', 'mwifiex: avoid -Wstringop-overflow warning

gcc-10 reports a warning for mwifiex_cmd_802_11_key_material_v1:

drivers/net/wireless/marvell/mwifiex/sta_cmd.c: In function \'mwifiex_cmd_802_11_key_material_v1\':
cc1: warning: writing 16 bytes into a region of size 0 [-Wstringop-overflow=]
In file included from drivers/net/wireless/marvell/mwifiex/sta_cmd.c:23:
drivers/net/wireless/marvell/mwifiex/fw.h:993:9: note: at offset 0 to object \'action\' with size 2 declared here
  993 |  __le16 action;
      |         ^~~~~~

As the warning makes no sense, I reported it as a bug for gcc. In the
meantime using a temporary pointer for the key data makes the code easier
to read and stops the warning.

Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94881
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/20200430213101.135134-4-arnd@arndb.de
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'dc30b40', '2020-05-02', 'Arnd Bergmann', 'drop_monitor: work around gcc-10 stringop-overflow warning', 'drop_monitor: work around gcc-10 stringop-overflow warning

The current gcc-10 snapshot produces a false-positive warning:

net/core/drop_monitor.c: In function \'trace_drop_common.constprop\':
cc1: error: writing 8 bytes into a region of size 0 [-Werror=stringop-overflow=]
In file included from net/core/drop_monitor.c:23:
include/uapi/linux/net_dropmon.h:36:8: note: at offset 0 to object \'entries\' with size 4 declared here
   36 |  __u32 entries;
      |        ^~~~~~~

I reported this in the gcc bugzilla, but in case it does not get
fixed in the release, work around it by using a temporary variable.

Fixes: 9a8afc8d3962 ("Network Drop Monitor: Adding drop monitor implementation & Netlink protocol")
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94881
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Neil Horman <nhorman@tuxdriver.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a34c7f5', '2020-04-18', 'Kees Cook', 'e1000: Distribute switch variables for initialization', 'e1000: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

drivers/net/ethernet/intel/e1000/e1000_main.c: In function ‘e1000_xmit_frame’:
drivers/net/ethernet/intel/e1000/e1000_main.c:3143:18: warning: statement will never be executed [-Wswitch-unreachable]
 3143 |     unsigned int pull_size;
      |                  ^~~~~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a5460b5', '2020-04-16', 'Will Deacon', 'READ_ONCE: Simplify implementations of {READ,WRITE}_ONCE()', 'READ_ONCE: Simplify implementations of {READ,WRITE}_ONCE()

The implementations of {READ,WRITE}_ONCE() suffer from a significant
amount of indirection and complexity due to a historic GCC bug:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145

which was originally worked around by 230fa253df63 ("kernel: Provide
READ_ONCE and ASSIGN_ONCE").

Since GCC 4.8 is fairly vintage at this point and we emit a warning if
we detect it during the build, return {READ,WRITE}_ONCE() to their former
glory with an implementation that is easier to understand and, crucially,
more amenable to optimisation. A side effect of this simplification is
that WRITE_ONCE() no longer returns a value, but nobody seems to be
relying on that and the new behaviour is aligned with smp_store_release().

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5429ef6', '2020-04-16', 'Will Deacon', 'compiler/gcc: Raise minimum GCC version for kernel builds to 4.8', 'compiler/gcc: Raise minimum GCC version for kernel builds to 4.8

It is very rare to see versions of GCC prior to 4.8 being used to build
the mainline kernel. These old compilers are also know to have codegen
issues which can lead to silent miscompilation:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145

Raise the minimum GCC version for kernel build to 4.8 and remove some
tautological Kconfig dependencies as a consequence.

Cc: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'afe956c', '2020-04-08', 'Nathan Chancellor', 'kbuild: Enable -Wtautological-compare', 'kbuild: Enable -Wtautological-compare

Currently, we disable -Wtautological-compare, which in turn disables a
bunch of more specific tautological comparison warnings that are useful
for the kernel such as -Wtautological-bitwise-compare. See clang\'s
documentation below for the other warnings that are suppressed by
-Wtautological-compare. Now that all of the major/noisy warnings have
been fixed, enable -Wtautological-compare so that more issues can be
caught at build time by various continuous integration setups.

-Wtautological-constant-out-of-range-compare is kept disabled under a
normal build but visible at W=1 because there are places in the kernel
where a constant or variable size can change based on the kernel
configuration. These are not fixed in a clean/concise way and the ones
I have audited so far appear to be harmless. It is not a subgroup but
rather just one warning so we do not lose out on much coverage by
default.

Link: https://github.com/ClangBuiltLinux/linux/issues/488
Link: http://releases.llvm.org/10.0.0/tools/clang/docs/DiagnosticsReference.html#wtautological-compare
Link: https://bugs.llvm.org/show_bug.cgi?id=42666
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '277a108', '2020-04-08', 'Kees Cook', 'ubsan: split "bounds" checker from other options', 'ubsan: split "bounds" checker from other options

In order to do kernel builds with the bounds checker individually
available, introduce CONFIG_UBSAN_BOUNDS, with the remaining options under
CONFIG_UBSAN_MISC.

For example, using this, we can start to expand the coverage syzkaller is
providing.  Right now, all of UBSan is disabled for syzbot builds because
taken as a whole, it is too noisy.  This will let us focus on one feature
at a time.

For the bounds checker specifically, this provides a mechanism to
eliminate an entire class of array overflows with close to zero
performance overhead (I cannot measure a difference).  In my (mostly)
defconfig, enabling bounds checking adds ~4200 checks to the kernel.
Performance changes are in the noise, likely due to the branch predictors
optimizing for the non-fail path.

Some notes on the bounds checker:

- it does not instrument {mem,str}*()-family functions, it only
  instruments direct indexed accesses (e.g. "foo[i]"). Dealing with
  the {mem,str}*()-family functions is a work-in-progress around
  CONFIG_FORTIFY_SOURCE[1].

- it ignores flexible array members, including the very old single
  byte (e.g. "int foo[1];") declarations. (Note that GCC\'s
  implementation appears to ignore _all_ trailing arrays, but Clang only
  ignores empty, 0, and 1 byte arrays[2].)

[1] https://github.com/KSPP/linux/issues/6
[2] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=92589

Suggested-by: Elena Petrova <lenaptr@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Acked-by: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Link: http://lkml.kernel.org/r/20200227193516.32566-3-keescook@chromium.org
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '295bcca', '2020-04-08', 'Rikard Falkeborn', 'linux/bits.h: add compile time sanity check of GENMASK inputs', 'linux/bits.h: add compile time sanity check of GENMASK inputs

GENMASK() and GENMASK_ULL() are supposed to be called with the high bit as
the first argument and the low bit as the second argument.  Mixing them
will return a mask with zero bits set.

Recent commits show getting this wrong is not uncommon, see e.g.  commit
aa4c0c9091b0 ("net: stmmac: Fix misuses of GENMASK macro") and commit
9bdd7bb3a844 ("clocksource/drivers/npcm: Fix misuse of GENMASK macro").

To prevent such mistakes from appearing again, add compile time sanity
checking to the arguments of GENMASK() and GENMASK_ULL().  If both
arguments are known at compile time, and the low bit is higher than the
high bit, break the build to detect the mistake immediately.

Since GENMASK() is used in declarations, BUILD_BUG_ON_ZERO() must be used
instead of BUILD_BUG_ON().

__builtin_constant_p does not evaluate is argument, it only checks if it
is a constant or not at compile time, and __builtin_choose_expr does not
evaluate the expression that is not chosen.  Therefore, GENMASK(x++, 0)
does only evaluate x++ once.

Commit 95b980d62d52 ("linux/bits.h: make BIT(), GENMASK(), and friends
available in assembly") made the macros in linux/bits.h available in
assembly.  Since BUILD_BUG_OR_ZERO() is not asm compatible, disable the
checks if the file is included in an asm file.

Due to bugs in GCC versions before 4.9 [0], disable the check if building
with a too old GCC compiler.

[0]: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=19449

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Haren Myneni <haren@us.ibm.com>
Cc: Joe Perches <joe@perches.com>
Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: lkml <linux-kernel@vger.kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Link: http://lkml.kernel.org/r/20200308193954.2372399-1-rikard.falkeborn@gmail.com
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '9cf016e', '2020-04-08', 'Kees Cook', 'lib: test_stackinit.c: XFAIL switch variable init tests', 'lib: test_stackinit.c: XFAIL switch variable init tests

The tests for initializing a variable defined between a switch statement\'s
test and its first "case" statement are currently not initialized in
Clang[1] nor the proposed auto-initialization feature in GCC.

We should retain the test (so that we can evaluate compiler fixes), but
mark it as an "expected fail".  The rest of the kernel source will be
adjusted to avoid this corner case.

Also disable -Wswitch-unreachable for the test so that the intentionally
broken code won\'t trigger warnings for GCC (nor future Clang) when
initialization happens this unhandled place.

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Suggested-by: Alexander Potapenko <glider@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Cc: Jann Horn <jannh@google.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Link: http://lkml.kernel.org/r/202002191358.2897A07C6@keescook
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '27d80fa', '2020-04-08', 'Kees Cook', 'mm/shmem.c: distribute switch variables for initialization', 'mm/shmem.c: distribute switch variables for initialization

Variables declared in a switch statement before any case statements cannot
be automatically initialized with compiler instrumentation (as they are
not part of any execution flow).  With GCC\'s proposed automatic stack
variable initialization feature, this triggers a warning (and they don\'t
get initialized).  Clang\'s automatic stack variable initialization (via
CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also doesn\'t
initialize such variables[1].  Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase, so
even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where they\'re
used or lift them up into the main function body.

mm/shmem.c: In function `shmem_getpage_gfp\':
mm/shmem.c:1816:10: warning: statement will never be executed [-Wswitch-unreachable]
 1816 |   loff_t i_size;
      |          ^~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Andrew Morton <akpm@linux-foundation.org>
Cc: Hugh Dickins <hughd@google.com>
Cc: Alexander Potapenko <glider@google.com>
Link: http://lkml.kernel.org/r/20200220062312.69165-1-keescook@chromium.org
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'deec222', '2020-03-16', 'Kees Cook', 'drm/edid: Distribute switch variables for initialization', 'drm/edid: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, lift such variables up into the next code
block.

drivers/gpu/drm/drm_edid.c: In function ‘drm_edid_to_eld’:
drivers/gpu/drm/drm_edid.c:4395:9: warning: statement will never be
executed [-Wswitch-unreachable]
 4395 |     int sad_count;
      |         ^~~~~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

v2: move into function block instead being switch-local (Ville Syrjälä)

Signed-off-by: Kees Cook <keescook@chromium.org>
[danvet: keep the changelog]
Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Link: https://patchwork.freedesktop.org/patch/msgid/202003060930.DDCCB6659@keescook
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c06a1c3', '2020-03-04', 'Kees Cook', 'usb: gadget: net2280: Distribute switch variables for initialization', 'usb: gadget: net2280: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

drivers/usb/gadget/udc/net2280.c: In function ‘handle_stat0_irqs_superspeed’:
drivers/usb/gadget/udc/net2280.c:2871:22: warning: statement will never be executed [-Wswitch-unreachable]
 2871 |   struct net2280_ep *e;
      |                      ^

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
Link: https://lore.kernel.org/r/202002201515.DFC51CF@keescook
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '0a68ff5', '2020-03-03', 'Kees Cook', 'fcntl: Distribute switch variables for initialization', 'fcntl: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

fs/fcntl.c: In function ‘send_sigio_to_task’:
fs/fcntl.c:738:20: warning: statement will never be executed [-Wswitch-unreachable]
  738 |   kernel_siginfo_t si;
      |                    ^~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Jeff Layton <jlayton@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '78c2442', '2020-02-24', 'Kees Cook', 'pcmcia: Distribute switch variables for initialization', 'pcmcia: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

drivers/char/pcmcia/cm4000_cs.c: In function ‘monitor_card’:
drivers/char/pcmcia/cm4000_cs.c:734:17: warning: statement will never be executed [-Wswitch-unreachable]
  734 |   unsigned char flags0;
      |                 ^~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20200220062308.69032-1-keescook@chromium.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '78856f2', '2020-02-24', 'Kees Cook', 'ppdev: Distribute switch variables for initialization', 'ppdev: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

drivers/char/ppdev.c: In function ‘pp_do_ioctl’:
drivers/char/ppdev.c:516:25: warning: statement will never be executed [-Wswitch-unreachable]
  516 |   struct ieee1284_info *info;
      |                         ^~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20200220062311.69121-1-keescook@chromium.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e24cd4e', '2020-02-24', 'Kees Cook', 'n_tty: Distribute switch variables for initialization', 'n_tty: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

drivers/tty/n_tty.c: In function ‘__process_echoes’:
drivers/tty/n_tty.c:657:18: warning: statement will never be executed [-Wswitch-unreachable]
  657 |     unsigned int num_chars, num_bs;
      |                  ^~~~~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Reviewed-by: Jiri Slaby <jslaby@suse.cz>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20200220062313.69209-1-keescook@chromium.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2713eb4', '2020-02-23', 'Kees Cook', 'drm/i915: Distribute switch variables for initialization', 'drm/i915: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

drivers/gpu/drm/i915/display/intel_display.c: In function ‘check_digital_port_conflicts’:
drivers/gpu/drm/i915/display/intel_display.c:12963:17: warning: statement will never be executed [-Wswitch-unreachable]
12963 |    unsigned int port_mask;
      |                 ^~~~~~~~~

drivers/gpu/drm/i915/intel_pm.c: In function ‘vlv_get_fifo_size’:
drivers/gpu/drm/i915/intel_pm.c:474:7: warning: statement will never be executed [-Wswitch-unreachable]
  474 |   u32 dsparb, dsparb2, dsparb3;
      |       ^~~~~~
drivers/gpu/drm/i915/intel_pm.c: In function ‘vlv_atomic_update_fifo’:
drivers/gpu/drm/i915/intel_pm.c:1997:7: warning: statement will never be executed [-Wswitch-unreachable]
 1997 |   u32 dsparb, dsparb2, dsparb3;
      |       ^~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/202002201602.92CADF7D@keescook
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '16a556e', '2020-02-21', 'Kees Cook', 'openvswitch: Distribute switch variables for initialization', 'openvswitch: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

net/openvswitch/flow_netlink.c: In function ‘validate_set’:
net/openvswitch/flow_netlink.c:2711:29: warning: statement will never be executed [-Wswitch-unreachable]
 2711 |  const struct ovs_key_ipv4 *ipv4_key;
      |                             ^~~~~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '46d30cb', '2020-02-21', 'Kees Cook', 'net: ip6_gre: Distribute switch variables for initialization', 'net: ip6_gre: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

net/ipv6/ip6_gre.c: In function ‘ip6gre_err’:
net/ipv6/ip6_gre.c:440:32: warning: statement will never be executed [-Wswitch-unreachable]
  440 |   struct ipv6_tlv_tnl_enc_lim *tel;
      |                                ^~~

net/ipv6/ip6_tunnel.c: In function ‘ip6_tnl_err’:
net/ipv6/ip6_tunnel.c:520:32: warning: statement will never be executed [-Wswitch-unreachable]
  520 |   struct ipv6_tlv_tnl_enc_lim *tel;
      |                                ^~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '161d179', '2020-02-21', 'Kees Cook', 'net: core: Distribute switch variables for initialization', 'net: core: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

net/core/skbuff.c: In function ‘skb_checksum_setup_ip’:
net/core/skbuff.c:4809:7: warning: statement will never be executed [-Wswitch-unreachable]
 4809 |   int err;
      |       ^~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '9038ec9', '2020-02-21', 'Kees Cook', 'x86/xen: Distribute switch variables for initialization', 'x86/xen: Distribute switch variables for initialization

Variables declared in a switch statement before any case statements
cannot be automatically initialized with compiler instrumentation (as
they are not part of any execution flow). With GCC\'s proposed automatic
stack variable initialization feature, this triggers a warning (and they
don\'t get initialized). Clang\'s automatic stack variable initialization
(via CONFIG_INIT_STACK_ALL=y) doesn\'t throw a warning, but it also
doesn\'t initialize such variables[1]. Note that these warnings (or silent
skipping) happen before the dead-store elimination optimization phase,
so even when the automatic initializations are later elided in favor of
direct initializations, the warnings remain.

To avoid these problems, move such variables into the "case" where
they\'re used or lift them up into the main function body.

arch/x86/xen/enlighten_pv.c: In function ‘xen_write_msr_safe’:
arch/x86/xen/enlighten_pv.c:904:12: warning: statement will never be executed [-Wswitch-unreachable]
  904 |   unsigned which;
      |            ^~~~~

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20200220062318.69299-1-keescook@chromium.org
Reviewed-by: Juergen Gross <jgross@suse.com>
[boris: made @which an \'unsigned int\']
Signed-off-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '42ae1a5', '2020-01-08', 'Arnd Bergmann', 'mlx5: work around high stack usage with gcc', 'mlx5: work around high stack usage with gcc

In some configurations, gcc tries too hard to optimize this code:

drivers/net/ethernet/mellanox/mlx5/core/en_stats.c: In function \'mlx5e_grp_sw_update_stats\':
drivers/net/ethernet/mellanox/mlx5/core/en_stats.c:302:1: error: the frame size of 1336 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]

As was stated in the bug report, the reason is that gcc runs into a corner
case in the register allocator that is rather hard to fix in a good way.

As there is an easy way to work around it, just add a comment and the
barrier that stops gcc from trying to overoptimize the function.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=92657
Cc: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Saeed Mahameed <saeedm@mellanox.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '790756c', '2019-11-16', 'Nick Desaulniers', 'ARM: 8933/1: replace Sun/Solaris style flag on section directive', 'ARM: 8933/1: replace Sun/Solaris style flag on section directive

It looks like a section directive was using "Solaris style" to declare
the section flags. Replace this with the GNU style so that Clang\'s
integrated assembler can assemble this directive.

The modified instances were identified via:
$ ag \\.section | grep #

Link: https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#SEC119
Link: https://github.com/ClangBuiltLinux/linux/issues/744
Link: https://bugs.llvm.org/show_bug.cgi?id=43759
Link: https://reviews.llvm.org/D69296

Acked-by: Nicolas Pitre <nico@fluxnic.net>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Jian Cai <jiancai@google.com>
Suggested-by: Peter Smith <peter.smith@linaro.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a48e61d', '2019-10-04', 'Will Deacon', 'arm64: Mark functions using explicit register variables as \'__always_inline\'', 'arm64: Mark functions using explicit register variables as \'__always_inline\'

As of ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING forcibly"),
inline functions are no longer annotated with \'__always_inline\', which
allows the compiler to decide whether inlining is really a good idea or
not. Although this is a great idea on paper, the reality is that AArch64
GCC prior to 9.1 has been shown to get confused when creating an
out-of-line copy of a function passing explicit \'register\' variables
into an inline assembly block:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91111

It\'s not clear whether this is specific to arm64 or not but, for now,
ensure that all of our functions using \'register\' variables are marked
as \'__always_inline\' so that the old behaviour is effectively preserved.

Hopefully other architectures are luckier with their compilers.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b0fe66c', '2019-09-10', 'Nathan Chancellor', 'ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer', 'ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer

Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
with clang:

arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable\':
softirq.c:(.text+0x504): undefined reference to `mcount\'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip\':
softirq.c:(.text+0x58c): undefined reference to `mcount\'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq\':
softirq.c:(.text+0x6c8): undefined reference to `mcount\'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter\':
softirq.c:(.text+0x75c): undefined reference to `mcount\'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit\':
softirq.c:(.text+0x840): undefined reference to `mcount\'
arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount\' follow

clang can emit a working mcount symbol, __gnu_mcount_nc, when
\'-meabi gnu\' is passed to it. Until r369147 in LLVM, this was
broken and caused the kernel not to boot with \'-pg\' because the
calling convention was not correct. Always build with \'-meabi gnu\'
when using clang but ensure that \'-pg\' (which is added with
CONFIG_FUNCTION_TRACER and its prereq CONFIG_HAVE_FUNCTION_TRACER)
cannot be added with it unless this is fixed (which means using
clang 10.0.0 and newer).

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Link: https://bugs.llvm.org/show_bug.cgi?id=33845
Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'bfafddd', '2019-09-08', 'Nick Desaulniers', 'include/linux/compiler.h: fix Oops for Clang-compiled kernels', 'include/linux/compiler.h: fix Oops for Clang-compiled kernels

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn\'t need to be escaped.

This fixes an Oops observed in distro\'s that use systemd and not
net.core.bpf_jit_enable=1, when their kernels are compiled with Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/619
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://lore.kernel.org/lkml/20190904181740.GA19688@gmail.com/
Acked-by: Will Deacon <will@kernel.org>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
[Cherry-picked from the __section cleanup series for 5.3]
[Adjusted commit message]
Signed-off-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e2079e9', '2019-08-30', 'Nathan Chancellor', 'kbuild: Do not enable -Wimplicit-fallthrough for clang for now', 'kbuild: Do not enable -Wimplicit-fallthrough for clang for now

This functionally reverts commit bfd77145f35c ("Makefile: Convert
-Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang").

clang enabled support for -Wimplicit-fallthrough in C in r369414 [1],
which causes a lot of warnings when building the kernel for two reasons:

1. Clang does not support the /* fall through */ comments. There seems
   to be a general consensus in the LLVM community that this is not
   something they want to support. Joe Perches wrote a script to convert
   all of the comments to a "fallthrough" keyword that will be added to
   compiler_attributes.h [2] [3], which catches the vast majority of the
   comments. There doesn\'t appear to be any consensus in the kernel
   community when to do this conversion.

2. Clang and GCC disagree about falling through to final case statements
   with no content or cases that simply break:

   https://godbolt.org/z/c8csDu

   This difference contributes at least 50 warnings in an allyesconfig
   build for x86, not considering other architectures. This difference
   will need to be discussed to see which compiler is right [4] [5].

[1]: https://github.com/llvm/llvm-project/commit/1e0affb6e564b7361b0aadb38805f26deff4ecfc
[2]: https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/
[3]: https://lore.kernel.org/lkml/1d2830aadbe9d8151728a7df5b88528fc72a0095.1564549413.git.joe@perches.com/
[4]: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91432
[5]: https://github.com/ClangBuiltLinux/linux/issues/636

Given these two problems need discussion and coordination, do not enable
-Wimplicit-fallthrough with clang right now. Add a comment to explain
what is going on as well. This commit should be reverted once these two
issues are fully flushed out and resolved.

Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '90776dd', '2019-08-15', 'Kees Cook', 'arm64/efi: Move variable assignments after SECTIONS', 'arm64/efi: Move variable assignments after SECTIONS

It seems that LLVM\'s linker does not correctly handle variable assignments
involving section positions that are updated during the SECTIONS
parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
an absolute symbol explicitly") ran into this too, but found a different
workaround.

However, this was not enough, as other variables were also miscalculated
which manifested as boot failures under UEFI where __efistub__end was
not taking the correct _end value (they should be the same):

$ ld.lld -EL -maarch64elf --no-undefined -X -shared \\
	-Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \\
	-o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \\
  readelf -Ws vmlinux.lld | egrep \'\\b(__efistub_|)_end\\b\'
368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end

$ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \\
	-Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \\
	-o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \\
  readelf -Ws vmlinux.bfd | egrep \'\\b(__efistub_|)_end\\b\'
338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end

To work around this, all of the __efistub_-prefixed variable assignments
need to be moved after the linker script\'s SECTIONS entry. As it turns
out, this also solves the problem fixed in commit aa69fb62bea1, so those
changes are reverted here.

Link: https://github.com/ClangBuiltLinux/linux/issues/634
Link: https://bugs.llvm.org/show_bug.cgi?id=42990
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Will Deacon <will@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'bfd7714', '2019-08-11', 'Joe Perches', 'Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang', 'Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang

A compilation -Wimplicit-fallthrough warning was enabled by commit
a035d552a93b ("Makefile: Globally enable fall-through warning")

Even though clang 10.0.0 does not currently support this warning without
a patch, clang currently does not support a value for this option.

  Link: https://bugs.llvm.org/show_bug.cgi?id=39382

The gcc default for this warning is 3 so removing the =3 has no effect
for gcc and enables the warning for patched versions of clang.

Also remove the =3 from an existing use in a parisc Makefile:
arch/parisc/math-emu/Makefile

Signed-off-by: Joe Perches <joe@perches.com>
Reviewed-and-tested-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: Gustavo A. R. Silva <gustavo@embeddedor.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ebb6d35', '2019-08-03', 'Arnd Bergmann', 'kasan: remove clang version check for KASAN_STACK', 'kasan: remove clang version check for KASAN_STACK

asan-stack mode still uses dangerously large kernel stacks of tens of
kilobytes in some drivers, and it does not seem that anyone is working
on the clang bug.

Turn it off for all clang versions to prevent users from accidentally
enabling it once they update to clang-9, and to help automated build
testing with clang-9.

Link: https://bugs.llvm.org/show_bug.cgi?id=38809
Link: http://lkml.kernel.org/r/20190719200347.2596375-1-arnd@arndb.de
Fixes: 6baec880d7a5 ("kasan: turn off asan-stack for clang-8 and earlier")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Qian Cai <cai@lca.pw>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a07057d', '2019-07-17', 'Arnd Bergmann', 'mm/slab_common.c: work around clang bug #42570', 'mm/slab_common.c: work around clang bug #42570

Clang gets rather confused about two variables in the same special
section when one of them is not initialized, leading to an assembler
warning later:

  /tmp/slab_common-18f869.s: Assembler messages:
  /tmp/slab_common-18f869.s:7526: Warning: ignoring changed section attributes for .data..ro_after_init

Adding an initialization to kmalloc_caches is rather silly here
but does avoid the issue.

Link: https://bugs.llvm.org/show_bug.cgi?id=42570
Link: http://lkml.kernel.org/r/20190712090455.266021-1-arnd@arndb.de
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: David Rientjes <rientjes@google.com>
Reviewed-by: Andrew Morton <akpm@linux-foundation.org>
Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Roman Gushchin <guro@fb.com>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: Vladimir Davydov <vdavydov.dev@gmail.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b27aca2', '2019-07-04', 'Arnd Bergmann', 'soc: rockchip: work around clang warning', 'soc: rockchip: work around clang warning

clang emits a warning about a negative shift count for an
unused part of a conditional constant expression:

drivers/soc/rockchip/pm_domains.c:795:21: error: shift count is negative [-Werror,-Wshift-count-negative]
        [RK3328_PD_VIO]         = DOMAIN_RK3328(-1, 8, 8, false),
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/soc/rockchip/pm_domains.c:129:2: note: expanded from macro \'DOMAIN_RK3328\'
        DOMAIN_M(pwr, pwr, req, (req) + 10, req, wakeup)
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/soc/rockchip/pm_domains.c:105:33: note: expanded from macro \'DOMAIN_M\'
        .status_mask = (status >= 0) ? BIT(status) : 0, \\
                                       ^~~~~~~~~~~
include/linux/bits.h:6:24: note: expanded from macro \'BIT\'

This is a bug in clang that will be fixed in the future, but in order
to build cleanly with clang-8, it would be helpful to shut up this
warning. This file is the only instance reported by kernelci at the
moment.

The best solution I could come up with is to move the BIT() usage
out of the macro into the instantiation, so we can avoid using
BIT(-1).

Link: https://lore.kernel.org/r/20190703153112.2767411-1-arnd@arndb.de
Link: https://bugs.llvm.org/show_bug.cgi?id=38789
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Olof Johansson <olof@lixom.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '3fe1ee4', '2019-06-20', 'Stefan Agner', 'ARM: use arch_extension directive instead of arch argument', 'ARM: use arch_extension directive instead of arch argument

The LLVM Target parser currently does not allow to specify the security
extension as part of -march (see also LLVM Bug 40186 [0]). When trying
to use Clang with LLVM\'s integrated assembler, this leads to build
errors such as this:
  clang-8: error: the clang compiler does not support \'-Wa,-march=armv7-a+sec\'

Use ".arch_extension sec" to enable the security extension in a more
portable fasion. Also make sure to use ".arch armv7-a" in case a v6/v7
multi-platform kernel is being built.

Note that this is technically not exactly the same as the old code
checked for availabilty of the security extension by calling as-instr.
However, there are already other sites which use ".arch_extension sec"
unconditionally, hence de-facto we need an assembler capable of
".arch_extension sec" already today (arch/arm/mm/proc-v7.S). The
arch extension "sec" is available since binutils 2.21 according to
its documentation [1].

[0] https://bugs.llvm.org/show_bug.cgi?id=40186
[1] https://sourceware.org/binutils/docs-2.21/as/ARM-Options.html

Signed-off-by: Stefan Agner <stefan@agner.ch>
Acked-by: Mans Rullgard <mans@mansr.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Olof Johansson <olof@lixom.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6ca6366', '2019-06-08', 'Sven Schnelle', 'parisc: add dynamic ftrace', 'parisc: add dynamic ftrace

This patch implements dynamic ftrace for PA-RISC. The required mcount
call sequences can get pretty long, so instead of patching the
whole call sequence out of the functions, we are using
-fpatchable-function-entry from gcc. This puts a configurable amount of
NOPS before/at the start of the function. Taking do_sys_open() as example,
which would look like this when the call is patched out:

1036b248:       08 00 02 40     nop
1036b24c:       08 00 02 40     nop
1036b250:       08 00 02 40     nop
1036b254:       08 00 02 40     nop

1036b258 <do_sys_open>:
1036b258:       08 00 02 40     nop
1036b25c:       08 03 02 41     copy r3,r1
1036b260:       6b c2 3f d9     stw rp,-14(sp)
1036b264:       08 1e 02 43     copy sp,r3
1036b268:       6f c1 01 00     stw,ma r1,80(sp)

When ftrace gets enabled for this function the kernel will patch these
NOPs to:

1036b248:       10 19 57 20     <address of ftrace>
1036b24c:       6f c1 00 80     stw,ma r1,40(sp)
1036b250:       48 21 3f d1     ldw -18(r1),r1
1036b254:       e8 20 c0 02     bv,n r0(r1)

1036b258 <do_sys_open>:
1036b258:       e8 3f 1f df     b,l,n .-c,r1
1036b25c:       08 03 02 41     copy r3,r1
1036b260:       6b c2 3f d9     stw rp,-14(sp)
1036b264:       08 1e 02 43     copy sp,r3
1036b268:       6f c1 01 00     stw,ma r1,80(sp)

So the first NOP in do_sys_open() will be patched to jump backwards into
some minimal trampoline code which pushes a stackframe, saves r1 which
holds the return address, loads the address of the real ftrace function,
and branches to that location. For 64 Bit things are getting a bit more
complicated (and longer) because we must make sure that the address of
ftrace location is 8 byte aligned, and the offset passed to ldd for
fetching the address is 8 byte aligned as well.

Note that gcc has a bug which misplaces the function label, and needs a
patch to make dynamic ftrace work. See
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=90751 for details.

Signed-off-by: Sven Schnelle <svens@stackframe.org>
Signed-off-by: Helge Deller <deller@gmx.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a195cef', '2019-05-21', 'Matteo Croce', 'samples, bpf: suppress compiler warning', 'samples, bpf: suppress compiler warning

GCC 9 fails to calculate the size of local constant strings and produces a
false positive:

samples/bpf/task_fd_query_user.c: In function ‘test_debug_fs_uprobe’:
samples/bpf/task_fd_query_user.c:242:67: warning: ‘%s’ directive output may be truncated writing up to 255 bytes into a region of size 215 [-Wformat-truncation=]
  242 |  snprintf(buf, sizeof(buf), "/sys/kernel/debug/tracing/events/%ss/%s/id",
      |                                                                   ^~
  243 |    event_type, event_alias);
      |                ~~~~~~~~~~~
samples/bpf/task_fd_query_user.c:242:2: note: ‘snprintf’ output between 45 and 300 bytes into a destination of size 256
  242 |  snprintf(buf, sizeof(buf), "/sys/kernel/debug/tracing/events/%ss/%s/id",
      |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  243 |    event_type, event_alias);
      |    ~~~~~~~~~~~~~~~~~~~~~~~~

Workaround this by lowering the buffer size to a reasonable value.
Related GCC Bugzilla: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83431

Signed-off-by: Matteo Croce <mcroce@redhat.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'fe22983', '2019-05-08', 'Mathieu Desnoyers', 'rseq/selftests: x86: Work-around bogus gcc-8 optimisation', 'rseq/selftests: x86: Work-around bogus gcc-8 optimisation

gcc-8 version 8.1.0, 8.2.0, and 8.3.0 generate broken assembler with asm
goto that have a thread-local storage "m" input operand on both x86-32
and x86-64. For instance:

__thread int var;

static int fct(void)
{
        asm goto (      "jmp %l[testlabel]\\n\\t"
                        : : [var] "m" (var) : : testlabel);
        return 0;
testlabel:
        return 1;
}

int main()
{
        return fct();
}

% gcc-8 -O2 -o test-asm-goto test-asm-goto.c
/tmp/ccAdHJbe.o: In function `main\':
test-asm-goto.c:(.text.startup+0x1): undefined reference to `.L2\'
collect2: error: ld returned 1 exit status

% gcc-8 -m32 -O2 -o test-asm-goto test-asm-goto.c
/tmp/ccREsVXA.o: In function `main\':
test-asm-goto.c:(.text.startup+0x1): undefined reference to `.L2\'
collect2: error: ld returned 1 exit status

Work-around this compiler bug in the rseq-x86.h header by passing the
address of the __rseq_abi TLS as a register operand rather than using
the "m" input operand.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=90193
Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
CC: Ingo Molnar <mingo@redhat.com>
CC: Peter Zijlstra <peterz@infradead.org>
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Joel Fernandes <joelaf@google.com>
CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Dave Watson <davejwatson@fb.com>
CC: Will Deacon <will.deacon@arm.com>
CC: Shuah Khan <shuah@kernel.org>
CC: Andi Kleen <andi@firstfloor.org>
CC: linux-kselftest@vger.kernel.org
CC: "H . Peter Anvin" <hpa@zytor.com>
CC: Chris Lameter <cl@linux.com>
CC: Russell King <linux@arm.linux.org.uk>
CC: Michael Kerrisk <mtk.manpages@gmail.com>
CC: "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>
CC: Paul Turner <pjt@google.com>
CC: Boqun Feng <boqun.feng@gmail.com>
CC: Josh Triplett <josh@joshtriplett.org>
CC: Steven Rostedt <rostedt@goodmis.org>
CC: Ben Maurer <bmaurer@fb.com>
CC: linux-api@vger.kernel.org
CC: Andy Lutomirski <luto@amacapital.net>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'be604c6', '2019-04-25', 'Kees Cook', 'arm64: sysreg: Make mrs_s and msr_s macros work with Clang and LTO', 'arm64: sysreg: Make mrs_s and msr_s macros work with Clang and LTO

Clang\'s integrated assembler does not allow assembly macros defined
in one inline asm block using the .macro directive to be used across
separate asm blocks. LLVM developers consider this a feature and not a
bug, recommending code refactoring:

  https://bugs.llvm.org/show_bug.cgi?id=19749

As binutils doesn\'t allow macros to be redefined, this change uses
UNDEFINE_MRS_S and UNDEFINE_MSR_S to define corresponding macros
in-place and workaround gcc and clang limitations on redefining macros
across different assembler blocks.

Specifically, the current state after preprocessing looks like this:

asm volatile(".macro mXX_s ... .endm");
void f()
{
	asm volatile("mXX_s a, b");
}

With GCC, it gives macro redefinition error because sysreg.h is included
in multiple source files, and assembler code for all of them is later
combined for LTO (I\'ve seen an intermediate file with hundreds of
identical definitions).

With clang, it gives macro undefined error because clang doesn\'t allow
sharing macros between inline asm statements.

I also seem to remember catching another sort of undefined error with
GCC due to reordering of macro definition asm statement and generated
asm code for function that uses the macro.

The solution with defining and undefining for each use, while certainly
not elegant, satisfies both GCC and clang, LTO and non-LTO.

Co-developed-by: Alex Matveev <alxmtvv@gmail.com>
Co-developed-by: Yury Norov <ynorov@caviumnetworks.com>
Co-developed-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Will Deacon <will.deacon@arm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '43947b8', '2019-04-24', 'Stefan Agner', 'ARM: 8853/1: drop WASM to work around LLVM issue', 'ARM: 8853/1: drop WASM to work around LLVM issue

Currently LLVM\'s integrated assembler does not recognize .w form
of the pld instructions (LLVM Bug 40972 [0]):

  ./arch/arm/include/asm/processor.h:133:5: error: invalid instruction
                          "pldw.wt%a0 n"
                           ^
  <inline asm>:2:1: note: instantiated into assembly here
  pldw.w  [r0]
  ^
  1 error generated.

The W macro for generating wide instructions when targeting Thumb-2
is not strictly required for the preload data instructions (pld, pldw)
since they are only available as wide instructions. The GNU assembler
works with or without the .w appended when compiling an Thumb-2 kernel.

Drop the macro to work around LLVM Bug 40972 issue.

[0] https://bugs.llvm.org/show_bug.cgi?id=40972

Signed-off-by: Stefan Agner <stefan@agner.ch>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'fe09d9c', '2019-04-24', 'Stefan Agner', 'ARM: 8852/1: uaccess: use unified assembler language syntax', 'ARM: 8852/1: uaccess: use unified assembler language syntax

Convert the conditional infix to a postfix to make sure this inline
assembly is unified syntax. Since gcc assumes non-unified syntax
when emitting ARM instructions, make sure to define the syntax as
unified.

This allows to use LLVM\'s integrated assembler.

Additionally, for GCC ".syntax unified" for inline assembly.
When compiling non-Thumb2 GCC always emits a ".syntax divided"
at the beginning of the inline assembly which makes the
assembler fail. Since GCC 5 there is the -masm-syntax-unified
GCC option which make GCC assume unified syntax asm and hence
emits ".syntax unified" even in ARM mode. However, the option
is broken since GCC version 6 (see GCC PR88648 [1]). Work
around by adding ".syntax unified" as part of the inline
assembly.

[0] https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html#index-masm-syntax-unified
[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=88648

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a6c9e96', '2019-04-24', 'Stefan Agner', 'ARM: 8851/1: add TUSERCOND() macro for conditional postfix', 'ARM: 8851/1: add TUSERCOND() macro for conditional postfix

Unified assembly syntax requires conditionals to be postfixes.
TUSER() currently only takes a single argument which then gets
appended t (with translation) on every instruction.

This fixes a build error when using LLVM\'s integrated assembler:
  In file included from kernel/futex.c:72:
  ./arch/arm/include/asm/futex.h:116:3: error: invalid instruction, did you mean: strt?
          "2:     " TUSER(streq) "        %3, [%4]n"
           ^
  <inline asm>:5:4: note: instantiated into assembly here
  2:      streqt  r2, [r4]
          ^~~~~~

Additionally, for GCC ".syntax unified" for inline assembly.
When compiling non-Thumb2 GCC always emits a ".syntax divided"
at the beginning of the inline assembly which makes the
assembler fail. Since GCC 5 there is the -masm-syntax-unified
GCC option which make GCC assume unified syntax asm and hence
emits ".syntax unified" even in ARM mode. However, the option
is broken since GCC version 6 (see GCC PR88648 [1]). Work
around by adding ".syntax unified" as part of the inline
assembly.

[0] https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html#index-masm-syntax-unified
[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=88648

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6e04249', '2019-04-11', 'Arnd Bergmann', 's390: avoid __builtin_return_address(n) on clang', 's390: avoid __builtin_return_address(n) on clang

llvm on s390 has problems with __builtin_return_address(n), with n>0,
this results in a somewhat cryptic error message:

fatal error: error in backend: Unsupported stack frame traversal count

To work around it, use the direct return address directly. This
is probably not ideal here, but gets things to compile and should
only lead to inferior reporting, not to misbehavior of the generated
code.

Link: https://bugs.llvm.org/show_bug.cgi?id=41424
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Martin Schwidefsky <schwidefsky@de.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5f074f3', '2019-04-06', 'Nick Desaulniers', 'lib/string.c: implement a basic bcmp', 'lib/string.c: implement a basic bcmp

A recent optimization in Clang (r355672) lowers comparisons of the
return value of memcmp against zero to comparisons of the return value
of bcmp against zero.  This helps some platforms that implement bcmp
more efficiently than memcmp.  glibc simply aliases bcmp to memcmp, but
an optimized implementation is in the works.

This results in linkage failures for all targets with Clang due to the
undefined symbol.  For now, just implement bcmp as a tailcail to memcmp
to unbreak the build.  This routine can be further optimized in the
future.

Other ideas discussed:

 * A weak alias was discussed, but breaks for architectures that define
   their own implementations of memcmp since aliases to declarations are
   not permitted (only definitions). Arch-specific memcmp
   implementations typically declare memcmp in C headers, but implement
   them in assembly.

 * -ffreestanding also is used sporadically throughout the kernel.

 * -fno-builtin-bcmp doesn\'t work when doing LTO.

Link: https://bugs.llvm.org/show_bug.cgi?id=41035
Link: https://code.woboq.org/userspace/glibc/string/memcmp.c.html#bcmp
Link: https://github.com/llvm/llvm-project/commit/8e16d73346f8091461319a7dfc4ddd18eedcff13
Link: https://github.com/ClangBuiltLinux/linux/issues/416
Link: http://lkml.kernel.org/r/20190313211335.165605-1-ndesaulniers@google.com
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: James Y Knight <jyknight@google.com>
Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: David Laight <David.Laight@ACULAB.COM>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a9d57ef', '2019-03-28', 'Daniel Borkmann', 'x86/retpolines: Disable switch jump tables when retpolines are enabled', 'x86/retpolines: Disable switch jump tables when retpolines are enabled

Commit ce02ef06fcf7 ("x86, retpolines: Raise limit for generating indirect
calls from switch-case") raised the limit under retpolines to 20 switch
cases where gcc would only then start to emit jump tables, and therefore
effectively disabling the emission of slow indirect calls in this area.

After this has been brought to attention to gcc folks [0], Martin Liska
has then fixed gcc to align with clang by avoiding to generate switch jump
tables entirely under retpolines. This is taking effect in gcc starting
from stable version 8.4.0. Given kernel supports compilation with older
versions of gcc where the fix is not being available or backported anymore,
we need to keep the extra KBUILD_CFLAGS around for some time and generally
set the -fno-jump-tables to align with what more recent gcc is doing
automatically today.

More than 20 switch cases are not expected to be fast-path critical, but
it would still be good to align with gcc behavior for versions < 8.4.0 in
order to have consistency across supported gcc versions. vmlinux size is
slightly growing by 0.27% for older gcc. This flag is only set to work
around affected gcc, no change for clang.

  [0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=86952

Suggested-by: Martin Liska <mliska@suse.cz>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Jesper Dangaard Brouer <brouer@redhat.com>
Cc: Björn Töpel<bjorn.topel@intel.com>
Cc: Magnus Karlsson <magnus.karlsson@intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: H.J. Lu <hjl.tools@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: David S. Miller <davem@davemloft.net>
Link: https://lkml.kernel.org/r/20190325135620.14882-1-daniel@iogearbox.net
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a9c640a', '2019-03-21', 'Nick Desaulniers', 'x86/boot: Restrict header scope to make Clang happy', 'x86/boot: Restrict header scope to make Clang happy

The inclusion of <linux/kernel.h> was causing issue as the definition of
__arch_hweight64 from arch/x86/include/asm/arch_hweight.h eventually gets
included. The definition is problematic when compiled with -m16 (all code
in arch/x86/boot/ is) as the "D" inline assembly constraint is rejected
by both compilers when passed an argument of type long long (regardless
of signedness, anything smaller is fine).

Because GCC performs inlining before semantic analysis, and
__arch_hweight64 is dead in this translation unit, GCC does not report
any issues at compile time.  Clang does the semantic analysis in the
front end, before inlining (run in the middle) can determine the code is
dead. I consider this another case of PR33587, which I think we can do
more work to solve.

It turns out that arch/x86/boot/string.c doesn\'t actually need
linux/kernel.h, simply linux/limits.h and linux/compiler.h.

Suggested-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: bp@alien8.de
Cc: niravd@google.com
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Chao Fan <fanc.fnst@cn.fujitsu.com>
Cc: Uros Bizjak <ubizjak@gmail.com>
Link: https://bugs.llvm.org/show_bug.cgi?id=33587
Link: https://github.com/ClangBuiltLinux/linux/issues/347
Link: https://lkml.kernel.org/r/20190314221458.83047-1-ndesaulniers@google.com

');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ed713a4', '2019-03-20', 'Arnd Bergmann', 'media: go7007: avoid clang frame overflow warning with KASAN', 'media: go7007: avoid clang frame overflow warning with KASAN

clang-8 warns about one function here when KASAN is enabled, even
without the \'asan-stack\' option:

drivers/media/usb/go7007/go7007-fw.c:1551:5: warning: stack frame size of 2656 bytes in function

I have reported this issue in the llvm bugzilla, but to make
it work with the clang-8 release, a small annotation is still
needed.

Link: https://bugs.llvm.org/show_bug.cgi?id=38809

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
[hverkuil-cisco@xs4all.nl: fix checkpatch warning]
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '03aa4f1', '2019-03-20', 'Arnd Bergmann', 'media: saa7146: avoid high stack usage with clang', 'media: saa7146: avoid high stack usage with clang

Two saa7146/hexium files contain a construct that causes a warning
when built with clang:

drivers/media/pci/saa7146/hexium_orion.c:210:12: error: stack frame size of 2272 bytes in function \'hexium_probe\'
      [-Werror,-Wframe-larger-than=]
static int hexium_probe(struct saa7146_dev *dev)
           ^
drivers/media/pci/saa7146/hexium_gemini.c:257:12: error: stack frame size of 2304 bytes in function \'hexium_attach\'
      [-Werror,-Wframe-larger-than=]
static int hexium_attach(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
           ^

This one happens regardless of KASAN, and the problem is that a
constructor to initialize a dynamically allocated structure leads
to a copy of that structure on the stack, whereas gcc initializes
it in place.

Link: https://bugs.llvm.org/show_bug.cgi?id=40776

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
[hverkuil-cisco@xs4all.nl: fix checkpatch warnings]
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '0077aaa', '2019-03-13', 'Arnd Bergmann', 'regulator: da903x: don\'t build with clang', 'regulator: da903x: don\'t build with clang

The da903x driver produces an annoying false-positive warning
when built with clang:

drivers/regulator/da903x.c:395:2: error: division by zero is undefined [-Werror,-Wdivision-by-zero]
        DA9030_LDO(13, 2100, 2100, 0, INVAL, 0, 0, RCTL11, 3), /* fixed @2.1V */
        ^                          ~
drivers/regulator/da903x.c:359:2: note: expanded from macro \'DA9030_LDO\'
        DA903x_LDO(DA9030, _id, min, max, step, vreg, shift, nbits, ereg, ebit)
        ^                                 ~~~~
drivers/regulator/da903x.c:320:39: note: expanded from macro \'DA903x_LDO\'
                .n_voltages = (step) ? ((max - min) / step + 1) : 1,    \\
                                                    ^ ~~~~
drivers/regulator/da903x.c:415:2: error: division by zero is undefined [-Werror,-Wdivision-by-zero]
        DA9034_LDO(5, 3100, 3100, 0, INVAL, 0, 0, OVER3, 7), /* fixed @3.1V */
        ^                         ~
drivers/regulator/da903x.c:356:2: note: expanded from macro \'DA9034_LDO\'
        DA903x_LDO(DA9034, _id, min, max, step, vreg, shift, nbits, ereg, ebit)
        ^                                 ~~~~
drivers/regulator/da903x.c:320:39: note: expanded from macro \'DA903x_LDO\'
                .n_voltages = (step) ? ((max - min) / step + 1) : 1,    \\
                                                    ^ ~~~~

I already reported this as a bug in clang, but it may take a
while to fix it. As I have not been able to come up with any
reasonable workaround, I would just disable compilation here.

Link: https://bugs.llvm.org/show_bug.cgi?id=38789
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'eefffb4', '2019-03-12', 'Arnd Bergmann', 'spi: work around clang bug in SPI_BPW_RANGE_MASK()', 'spi: work around clang bug in SPI_BPW_RANGE_MASK()

Clang-8 evaluates both sides of a ?: expression to check for
valid arithmetic even in the side that is never taken. This
results in a build warning:

drivers/spi/spi-sh-msiof.c:1052:24: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
        .bits_per_word_mask = SPI_BPW_RANGE_MASK(8, 32),
                              ^~~~~~~~~~~~~~~~~~~~~~~~~

Change the implementation to use the GENMASK() macro that does
what we want here but does not have a problem with the shift
count overflow.

Link: https://bugs.llvm.org/show_bug.cgi?id=38789
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Mark Brown <broonie@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6baec88', '2019-03-02', 'Arnd Bergmann', 'kasan: turn off asan-stack for clang-8 and earlier', 'kasan: turn off asan-stack for clang-8 and earlier

Building an arm64 allmodconfig kernel with clang results in over 140
warnings about overly large stack frames, the worst ones being:

  drivers/gpu/drm/panel/panel-sitronix-st7789v.c:196:12: error: stack frame size of 20224 bytes in function \'st7789v_prepare\'
  drivers/video/fbdev/omap2/omapfb/displays/panel-tpo-td028ttec1.c:196:12: error: stack frame size of 13120 bytes in function \'td028ttec1_panel_enable\'
  drivers/usb/host/max3421-hcd.c:1395:1: error: stack frame size of 10048 bytes in function \'max3421_spi_thread\'
  drivers/net/wan/slic_ds26522.c:209:12: error: stack frame size of 9664 bytes in function \'slic_ds26522_probe\'
  drivers/crypto/ccp/ccp-ops.c:2434:5: error: stack frame size of 8832 bytes in function \'ccp_run_cmd\'
  drivers/media/dvb-frontends/stv0367.c:1005:12: error: stack frame size of 7840 bytes in function \'stv0367ter_algo\'

None of these happen with gcc today, and almost all of these are the
result of a single known issue in llvm.  Hopefully it will eventually
get fixed with the clang-9 release.

In the meantime, the best idea I have is to turn off asan-stack for
clang-8 and earlier, so we can produce a kernel that is safe to run.

I have posted three patches that address the frame overflow warnings
that are not addressed by turning off asan-stack, so in combination with
this change, we get much closer to a clean allmodconfig build, which in
turn is necessary to do meaningful build regression testing.

It is still possible to turn on the CONFIG_ASAN_STACK option on all
versions of clang, and it\'s always enabled for gcc, but when
CONFIG_COMPILE_TEST is set, the option remains invisible, so
allmodconfig and randconfig builds (which are normally done with a
forced CONFIG_COMPILE_TEST) will still result in a mostly clean build.

Link: http://lkml.kernel.org/r/20190222222950.3997333-1-arnd@arndb.de
Link: https://bugs.llvm.org/show_bug.cgi?id=38809
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Qian Cai <cai@lca.pw>
Reviewed-by: Mark Brown <broonie@kernel.org>
Acked-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kostya Serebryany <kcc@google.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b7e8c93', '2019-02-26', 'Stefan Agner', 'ARM: 8845/1: use unified assembler in c files', 'ARM: 8845/1: use unified assembler in c files

Use unified assembler syntax (UAL) in inline assembler. Divided
syntax is considered deprecated. This will also allow to build
the kernel using LLVM\'s integrated assembler.

When compiling non-Thumb2 GCC always emits a ".syntax divided"
at the beginning of the inline assembly which makes the
assembler fail. Since GCC 5 there is the -masm-syntax-unified
GCC option which make GCC assume unified syntax asm and hence
emits ".syntax unified" even in ARM mode. However, the option
is broken since GCC version 6 (see GCC PR88648 [1]). Work
around by adding ".syntax unified" as part of the inline
assembly.

[0] https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html#index-masm-syntax-unified
[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=88648

Signed-off-by: Stefan Agner <stefan@agner.ch>
Acked-by: Nicolas Pitre <nico@linaro.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a8e911d', '2019-02-02', 'Qian Cai', 'x86_64: increase stack size for KASAN_EXTRA', 'x86_64: increase stack size for KASAN_EXTRA

If the kernel is configured with KASAN_EXTRA, the stack size is
increasted significantly because this option sets "-fstack-reuse" to
"none" in GCC [1].  As a result, it triggers stack overrun quite often
with 32k stack size compiled using GCC 8.  For example, this reproducer

  https://github.com/linux-test-project/ltp/blob/master/testcases/kernel/syscalls/madvise/madvise06.c

triggers a "corrupted stack end detected inside scheduler" very reliably
with CONFIG_SCHED_STACK_END_CHECK enabled.

There are just too many functions that could have a large stack with
KASAN_EXTRA due to large local variables that have been called over and
over again without being able to reuse the stacks.  Some noticiable ones
are

  size
  7648 shrink_page_list
  3584 xfs_rmap_convert
  3312 migrate_page_move_mapping
  3312 dev_ethtool
  3200 migrate_misplaced_transhuge_page
  3168 copy_process

There are other 49 functions are over 2k in size while compiling kernel
with "-Wframe-larger-than=" even with a related minimal config on this
machine.  Hence, it is too much work to change Makefiles for each object
to compile without "-fsanitize-address-use-after-scope" individually.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715#c23

Although there is a patch in GCC 9 to help the situation, GCC 9 probably
won\'t be released in a few months and then it probably take another
6-month to 1-year for all major distros to include it as a default.
Hence, the stack usage with KASAN_EXTRA can be revisited again in 2020
when GCC 9 is everywhere.  Until then, this patch will help users avoid
stack overrun.

This has already been fixed for arm64 for the same reason via
6e8830674ea ("arm64: kasan: Increase stack size for KASAN_EXTRA").

Link: http://lkml.kernel.org/r/20190109215209.2903-1-cai@lca.pw
Signed-off-by: Qian Cai <cai@lca.pw>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '9a71ac7', '2019-01-23', 'Alexey Kardashevskiy', 'vfio-pci/nvlink2: Fix ancient gcc warnings', 'vfio-pci/nvlink2: Fix ancient gcc warnings

Using the {0} construct as a generic initializer is perfectly fine in C,
however due to a bug in old gcc there is a warning:

  + /kisskb/src/drivers/vfio/pci/vfio_pci_nvlink2.c: warning: (near
initialization for \'cap.header\') [-Wmissing-braces]:  => 181:9

Since for whatever reason we still want to compile the modern kernel
with such an old gcc without warnings, this changes the capabilities
initialization.

The gcc bugzilla: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=53119

Fixes: 7f92891778df ("vfio_pci: Add NVIDIA GV100GL [Tesla V100 SXM2] subdriver")
Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Alex Williamson <alex.williamson@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '72e7bcc', '2018-12-20', 'Joel Stanley', 'powerpc/32: Avoid unsupported flags with clang', 'powerpc/32: Avoid unsupported flags with clang

When building for ppc32 with clang these flags are unsupported:

  -ffixed-r2 and -mmultiple

llvm\'s lib/Target/PowerPC/PPCRegisterInfo.cpp marks r2 as reserved on
when building for SVR4ABI and !ppc64:

  // The SVR4 ABI reserves r2 and r13
  if (Subtarget.isSVR4ABI()) {
    // We only reserve r2 if we need to use the TOC pointer. If we have no
    // explicit uses of the TOC pointer (meaning we\'re a leaf function with
    // no constant-pool loads, etc.) and we have no potential uses inside an
    // inline asm block, then we can treat r2 has an ordinary callee-saved
    // register.
    const PPCFunctionInfo *FuncInfo = MF.getInfo<PPCFunctionInfo>();
    if (!TM.isPPC64() || FuncInfo->usesTOCBasePtr() || MF.hasInlineAsm())
      markSuperRegs(Reserved, PPC::R2);  // System-reserved register
    markSuperRegs(Reserved, PPC::R13); // Small Data Area pointer register
  }

This means we can safely omit -ffixed-r2 when building for 32-bit
targets.

The -mmultiple/-mno-multiple flags are not supported by clang, so
platforms that might support multiple miss out on using multiple word
instructions.

We wrap these flags in cc-option so that when Clang gains support the
kernel will be able use these flags.

Clang 8 can then build a ppc44x_defconfig which boots in Qemu:

  make CC=clang-8 ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu-  ppc44x_defconfig
  ./scripts/config -e CONFIG_DEVTMPFS -d DEVTMPFS_MOUNT
  make CC=clang-8 ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu-

  qemu-system-ppc -M bamboo \\
   -kernel arch/powerpc/boot/zImage \\
   -dtb arch/powerpc/boot/dts/bamboo.dtb \\
   -initrd ~/ppc32-440-rootfs.cpio \\
   -nographic -serial stdio -monitor pty -append "console=ttyS0"

Link: https://github.com/ClangBuiltLinux/linux/issues/261
Link: https://bugs.llvm.org/show_bug.cgi?id=39556
Link: https://bugs.llvm.org/show_bug.cgi?id=39555
Signed-off-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e213574', '2018-12-20', 'Joel Stanley', 'raid6/ppc: Fix build for clang', 'raid6/ppc: Fix build for clang

We cannot build these files with clang as it does not allow altivec
instructions in assembly when -msoft-float is passed.

Jinsong Ji <jji@us.ibm.com> wrote:
> We currently disable Altivec/VSX support when enabling soft-float.  So
> any usage of vector builtins will break.
>
> Enable Altivec/VSX with soft-float may need quite some clean up work, so
> I guess this is currently a limitation.
>
> Removing -msoft-float will make it work (and we are lucky that no
> floating point instructions will be generated as well).

This is a workaround until the issue is resolved in clang.

Link: https://bugs.llvm.org/show_bug.cgi?id=31177
Link: https://github.com/ClangBuiltLinux/linux/issues/239
Signed-off-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6e88306', '2018-12-11', 'Qian Cai', 'arm64: kasan: Increase stack size for KASAN_EXTRA', 'arm64: kasan: Increase stack size for KASAN_EXTRA

If the kernel is configured with KASAN_EXTRA, the stack size is
increased significantly due to setting the GCC -fstack-reuse option to
"none" [1]. As a result, it can trigger a stack overrun quite often with
32k stack size compiled using GCC 8. For example, this reproducer

  https://github.com/linux-test-project/ltp/blob/master/testcases/kernel/syscalls/madvise/madvise06.c

can trigger a "corrupted stack end detected inside scheduler" very
reliably with CONFIG_SCHED_STACK_END_CHECK enabled. There are other
reports at:

  https://lore.kernel.org/lkml/1542144497.12945.29.camel@gmx.us/
  https://lore.kernel.org/lkml/721E7B42-2D55-4866-9C1A-3E8D64F33F9C@gmx.us/

There are just too many functions that could have a large stack with
KASAN_EXTRA due to large local variables that have been called over and
over again without being able to reuse the stacks. Some noticiable ones
are,

size
7536 shrink_inactive_list
7440 shrink_page_list
6560 fscache_stats_show
3920 jbd2_journal_commit_transaction
3216 try_to_unmap_one
3072 migrate_page_move_mapping
3584 migrate_misplaced_transhuge_page
3920 ip_vs_lblcr_schedule
4304 lpfc_nvme_info_show
3888 lpfc_debugfs_nvmestat_data.constprop

There are other 49 functions over 2k in size while compiling kernel with
"-Wframe-larger-than=" on this machine. Hence, it is too much work to
change Makefiles for each object to compile without
-fsanitize-address-use-after-scope individually.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715#c23

Signed-off-by: Qian Cai <cai@lca.pw>
Signed-off-by: Will Deacon <will.deacon@arm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ac3e233', '2018-12-08', 'Nick Desaulniers', 'x86/vdso: Drop implicit common-page-size linker flag', 'x86/vdso: Drop implicit common-page-size linker flag

GNU linker\'s -z common-page-size\'s default value is based on the target
architecture. arch/x86/entry/vdso/Makefile sets it to the architecture
default, which is implicit and redundant. Drop it.

Fixes: 2aae950b21e4 ("x86_64: Add vDSO for x86-64 with gettimeofday/clock_gettime/getcpu")
Reported-by: Dmitry Golovin <dima@golovin.in>
Reported-by: Bill Wendling <morbo@google.com>
Suggested-by: Dmitry Golovin <dima@golovin.in>
Suggested-by: Rui Ueyama <ruiu@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Acked-by: Andy Lutomirski <luto@kernel.org>
Cc: Andi Kleen <andi@firstfloor.org>
Cc: Fangrui Song <maskray@google.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: x86-ml <x86@kernel.org>
Link: https://lkml.kernel.org/r/20181206191231.192355-1-ndesaulniers@google.com
Link: https://bugs.llvm.org/show_bug.cgi?id=38774
Link: https://github.com/ClangBuiltLinux/linux/issues/31
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1c23b41', '2018-11-19', 'Arnd Bergmann', 'lib/ubsan.c: don\'t mark __ubsan_handle_builtin_unreachable as noreturn', 'lib/ubsan.c: don\'t mark __ubsan_handle_builtin_unreachable as noreturn

gcc-8 complains about the prototype for this function:

  lib/ubsan.c:432:1: error: ignoring attribute \'noreturn\' in declaration of a built-in function \'__ubsan_handle_builtin_unreachable\' because it conflicts with attribute \'const\' [-Werror=attributes]

This is actually a GCC\'s bug. In GCC internals
__ubsan_handle_builtin_unreachable() declared with both \'noreturn\' and
\'const\' attributes instead of only \'noreturn\':

   https://gcc.gnu.org/bugzilla/show_bug.cgi?id=84210

Workaround this by removing the noreturn attribute.

[aryabinin: add information about GCC bug in changelog]
Link: http://lkml.kernel.org/r/20181107144516.4587-1-aryabinin@virtuozzo.com
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Acked-by: Olof Johansson <olof@lixom.net>
Cc: <stable@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '437e88a', '2018-11-05', 'Nathan Chancellor', 'x86/build: Remove -pipe from KBUILD_CFLAGS', 'x86/build: Remove -pipe from KBUILD_CFLAGS

Commit 77b0bf55bc67 ("kbuild/Makefile: Prepare for using macros in
inline assembly code to work around asm() related GCC inlining bugs")
added -Wa,- to KBUILD_CFLAGS, which breaks compiling with Clang (hangs
indefinitely at compiling init/main.o). This happens because while Clang
accepts -pipe (and has it documented in its list of supported flags), it
silently ignores it after this 2010 commit (thanks to Nick Desaulniers
for tracking this down), meaning that gas just infinitely waits for
stdin and never receives it.

https://github.com/llvm-mirror/clang/commit/c19a12dc3d441bec62eed55e312b76c12d6d9022

Initially, I had suggested just add -Wa,- to KBUILD_CFLAGS when GCC was
being used but that was before realizing it is because Clang doesn\'t do
anything with -pipe. H. Peter Anvin suggested checking to see if -pipe
gives us any gains out of GCC. Turns out it might actually be hurting:

With -pipe:

real    3m40.813s
real    3m44.449s
real    3m39.648s

Without -pipe:

real    3m38.492s
real    3m38.335s
real    3m38.975s

The issue of -Wa,- being passed along to gas without -pipe being
supported should still probably be fixed on the LLVM side (open issue:
https://bugs.llvm.org/show_bug.cgi?id=39410) but this is not as much of
a workaround anymore since it helps both GCC and Clang.

Suggested-by: H. Peter Anvin <hpa@zytor.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nadav Amit <namit@vmware.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/213
Link: https://lkml.kernel.org/r/20181023231125.27976-1-natechancellor@gmail.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'fe0640e', '2018-10-19', 'ndesaulniers@google.com', 'compiler.h: update definition of unreachable()', 'compiler.h: update definition of unreachable()

Fixes the objtool warning seen with Clang:
arch/x86/mm/fault.o: warning: objtool: no_context()+0x220: unreachable
instruction

Fixes commit 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h
mutually exclusive")

Josh noted that the fallback definition was meant to work around a
pre-gcc-4.6 bug. GCC still needs to work around
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82365, so compiler-gcc.h
defines its own version of unreachable().  Clang and ICC can use this
shared definition.

Link: https://github.com/ClangBuiltLinux/linux/issues/204
Suggested-by: Andy Lutomirski <luto@amacapital.net>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'dde709d', '2018-10-09', 'Vasily Gorbik', 'compiler: introduce __no_sanitize_address_or_inline', 'compiler: introduce __no_sanitize_address_or_inline

Due to conflict between kasan instrumentation and inlining
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368 functions which are
defined as inline could not be called from functions defined with
__no_sanitize_address.

Introduce __no_sanitize_address_or_inline which would expand to
__no_sanitize_address when the kernel is built with kasan support and
to inline otherwise. This helps to avoid disabling kasan
instrumentation for entire files.

Reviewed-by: Martin Schwidefsky <schwidefsky@de.ibm.com>
Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
Signed-off-by: Martin Schwidefsky <schwidefsky@de.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '183e19f', '2018-10-05', 'Sean Young', 'media: rc: Remove init_ir_raw_event and DEFINE_IR_RAW_EVENT macros', 'media: rc: Remove init_ir_raw_event and DEFINE_IR_RAW_EVENT macros

This can be done with c99 initializers, which makes the code cleaner
and more transparent. It does require gcc 4.6, because of this bug
in earlier versions:

	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=10676

Since commit cafa0010cd51 ("Raise the minimum required gcc version to
4.6"), this is the case.

Signed-off-by: Sean Young <sean@mess.org>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd124b44', '2018-09-20', 'Miguel Ojeda', 'Compiler Attributes: naked was fixed in gcc 4.6', 'Compiler Attributes: naked was fixed in gcc 4.6

Commit 9c695203a7dd ("compiler-gcc.h: gcc-4.5 needs noclone
and noinline on __naked functions") added noinline and noclone
as a workaround for a gcc 4.5 bug, which was resolved in 4.6.0.

Since now the minimum gcc supported version is 4.6,
we can clean it up.

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=44290
and https://godbolt.org/z/h6NMIL

Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Eli Friedman <efriedma@codeaurora.org>
Cc: Christopher Li <sparse@chrisli.org>
Cc: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Joe Perches <joe@perches.com>
Cc: Dominique Martinet <asmadeus@codewreck.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-sparse@vger.kernel.org
Tested-by: Stefan Agner <stefan@agner.ch>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Reviewed-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ee9d21b', '2018-09-19', 'Joel Stanley', 'powerpc/boot: Ensure _zimage_start is a weak symbol', 'powerpc/boot: Ensure _zimage_start is a weak symbol

When building with clang crt0\'s _zimage_start is not marked weak, which
breaks the build when linking the kernel image:

 $ objdump -t arch/powerpc/boot/crt0.o |grep _zimage_start$
 0000000000000058 g       .text  0000000000000000 _zimage_start

 ld: arch/powerpc/boot/wrapper.a(crt0.o): in function \'_zimage_start\':
 (.text+0x58): multiple definition of \'_zimage_start\';
 arch/powerpc/boot/pseries-head.o:(.text+0x0): first defined here

Clang requires the .weak directive to appear after the symbol is
declared. The binutils manual says:

 This directive sets the weak attribute on the comma separated list of
 symbol names. If the symbols do not already exist, they will be
 created.

So it appears this is different with clang. The only reference I could
see for this was an OpenBSD mailing list post[1].

Changing it to be after the declaration fixes building with Clang, and
still works with GCC.

 $ objdump -t arch/powerpc/boot/crt0.o |grep _zimage_start$
 0000000000000058  w      .text	0000000000000000 _zimage_start

Reported to clang as https://bugs.llvm.org/show_bug.cgi?id=38921

[1] https://groups.google.com/forum/#!topic/fa.openbsd.tech/PAgKKen2YCY

Signed-off-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ed6ed11', '2018-09-04', 'Ard Biesheuvel', 'crypto: arm64/aes-modes - get rid of literal load of addend vector', 'crypto: arm64/aes-modes - get rid of literal load of addend vector

Replace the literal load of the addend vector with a sequence that
performs each add individually. This sequence is only 2 instructions
longer than the original, and 2% faster on Cortex-A53.

This is an improvement by itself, but also works around a Clang issue,
whose integrated assembler does not implement the GNU ARM asm syntax
completely, and does not support the =literal notation for FP registers
(more info at https://bugs.llvm.org/show_bug.cgi?id=38642)

Cc: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1a2eaed', '2018-07-14', 'Leo (Sunpeng) Li', 'drm/amd/display: Fix compile error on older GCC versions', 'drm/amd/display: Fix compile error on older GCC versions

GCC 4.9 reports a \'missing braces around initializer\' error. This is a
bug, documented here:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=53119

Fix it by adding another brace.

Signed-off-by: Leo (Sunpeng) Li <sunpeng.li@amd.com>
Reviewed-by: Mikita Lipski <Mikita.Lipski@amd.com>
Acked-by: Harry Wentland <harry.wentland@amd.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd0a8d93', '2018-07-03', 'Nick Desaulniers', 'x86/paravirt: Make native_save_fl() extern inline', 'x86/paravirt: Make native_save_fl() extern inline

native_save_fl() is marked static inline, but by using it as
a function pointer in arch/x86/kernel/paravirt.c, it MUST be outlined.

paravirt\'s use of native_save_fl() also requires that no GPRs other than
%rax are clobbered.

Compilers have different heuristics which they use to emit stack guard
code, the emittance of which can break paravirt\'s callee saved assumption
by clobbering %rcx.

Marking a function definition extern inline means that if this version
cannot be inlined, then the out-of-line version will be preferred. By
having the out-of-line version be implemented in assembly, it cannot be
instrumented with a stack protector, which might violate custom calling
conventions that code like paravirt rely on.

The semantics of extern inline has changed since gnu89. This means that
folks using GCC versions >= 5.1 may see symbol redefinition errors at
link time for subdirs that override KBUILD_CFLAGS (making the C standard
used implicit) regardless of this patch. This has been cleaned up
earlier in the patch set, but is left as a note in the commit message
for future travelers.

Reports:
 https://lkml.org/lkml/2018/5/7/534
 https://github.com/ClangBuiltLinux/linux/issues/16

Discussion:
 https://bugs.llvm.org/show_bug.cgi?id=37512
 https://lkml.org/lkml/2018/5/24/1371

Thanks to the many folks that participated in the discussion.

Debugged-by: Alistair Strachan <astrachan@google.com>
Debugged-by: Matthias Kaehlcke <mka@chromium.org>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: H. Peter Anvin <hpa@zytor.com>
Suggested-by: Tom Stellar <tstellar@redhat.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Juergen Gross <jgross@suse.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: acme@redhat.com
Cc: akataria@vmware.com
Cc: akpm@linux-foundation.org
Cc: andrea.parri@amarulasolutions.com
Cc: ard.biesheuvel@linaro.org
Cc: aryabinin@virtuozzo.com
Cc: astrachan@google.com
Cc: boris.ostrovsky@oracle.com
Cc: brijesh.singh@amd.com
Cc: caoj.fnst@cn.fujitsu.com
Cc: geert@linux-m68k.org
Cc: ghackmann@google.com
Cc: gregkh@linuxfoundation.org
Cc: jan.kiszka@siemens.com
Cc: jarkko.sakkinen@linux.intel.com
Cc: joe@perches.com
Cc: jpoimboe@redhat.com
Cc: keescook@google.com
Cc: kirill.shutemov@linux.intel.com
Cc: kstewart@linuxfoundation.org
Cc: linux-efi@vger.kernel.org
Cc: linux-kbuild@vger.kernel.org
Cc: manojgupta@google.com
Cc: mawilcox@microsoft.com
Cc: michal.lkml@markovi.net
Cc: mjg59@google.com
Cc: mka@chromium.org
Cc: pombredanne@nexb.com
Cc: rientjes@google.com
Cc: rostedt@goodmis.org
Cc: thomas.lendacky@amd.com
Cc: tweek@google.com
Cc: virtualization@lists.linux-foundation.org
Cc: will.deacon@arm.com
Cc: yamada.masahiro@socionext.com
Link: http://lkml.kernel.org/r/20180621162324.36656-4-ndesaulniers@google.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'bee2003', '2018-06-25', 'Arnd Bergmann', 'disable -Wattribute-alias warning for SYSCALL_DEFINEx()', 'disable -Wattribute-alias warning for SYSCALL_DEFINEx()

gcc-8 warns for every single definition of a system call entry
point, e.g.:

include/linux/compat.h:56:18: error: \'compat_sys_rt_sigprocmask\' alias between functions of incompatible types \'long int(int,  compat_sigset_t *, compat_sigset_t *, compat_size_t)\' {aka \'long int(int,  struct <anonymous> *, struct <anonymous> *, unsigned int)\'} and \'long int(long int,  long int,  long int,  long int)\' [-Werror=attribute-alias]
  asmlinkage long compat_sys##name(__MAP(x,__SC_DECL,__VA_ARGS__))\\
                  ^~~~~~~~~~
include/linux/compat.h:45:2: note: in expansion of macro \'COMPAT_SYSCALL_DEFINEx\'
  COMPAT_SYSCALL_DEFINEx(4, _##name, __VA_ARGS__)
  ^~~~~~~~~~~~~~~~~~~~~~
kernel/signal.c:2601:1: note: in expansion of macro \'COMPAT_SYSCALL_DEFINE4\'
 COMPAT_SYSCALL_DEFINE4(rt_sigprocmask, int, how, compat_sigset_t __user *, nset,
 ^~~~~~~~~~~~~~~~~~~~~~
include/linux/compat.h:60:18: note: aliased declaration here
  asmlinkage long compat_SyS##name(__MAP(x,__SC_LONG,__VA_ARGS__))\\
                  ^~~~~~~~~~

The new warning seems reasonable in principle, but it doesn\'t
help us here, since we rely on the type mismatch to sanitize the
system call arguments. After I reported this as GCC PR82435, a new
-Wno-attribute-alias option was added that could be used to turn the
warning off globally on the command line, but I\'d prefer to do it a
little more fine-grained.

Interestingly, turning a warning off and on again inside of
a single macro doesn\'t always work, in this case I had to add
an extra statement inbetween and decided to copy the __SC_TEST
one from the native syscall to the compat syscall macro.  See
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83256 for more details
about this.

[paul.burton@mips.com:
  - Rebase atop current master.
  - Split GCC & version arguments to __diag_ignore() in order to match
    changes to the preceding patch.
  - Add the comment argument to match the preceding patch.]

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82435
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Tested-by: Christophe Leroy <christophe.leroy@c-s.fr>
Tested-by: Stafford Horne <shorne@gmail.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4bb8b65', '2018-06-07', 'Arnd Bergmann', 'xfs: fix string handling in label get/set functions', 'xfs: fix string handling in label get/set functions

[sandeen: fix subject, avoid copy-out of uninit data in getlabel]

gcc-8 reports two warnings for the newly added getlabel/setlabel code:

fs/xfs/xfs_ioctl.c: In function \'xfs_ioc_getlabel\':
fs/xfs/xfs_ioctl.c:1822:38: error: argument to \'sizeof\' in \'strncpy\' call is the same expression as the source; did you mean to use the size of the destination? [-Werror=sizeof-pointer-memaccess]
  strncpy(label, sbp->sb_fname, sizeof(sbp->sb_fname));
                                      ^
In function \'strncpy\',
    inlined from \'xfs_ioc_setlabel\' at /git/arm-soc/fs/xfs/xfs_ioctl.c:1863:2,
    inlined from \'xfs_file_ioctl\' at /git/arm-soc/fs/xfs/xfs_ioctl.c:1918:10:
include/linux/string.h:254:9: error: \'__builtin_strncpy\' output may be truncated copying 12 bytes from a string of length 12 [-Werror=stringop-truncation]
  return __builtin_strncpy(p, q, size);

In both cases, part of the problem is that one of the strncpy()
arguments is a fixed-length character array with zero-padding rather
than a zero-terminated string. In the first one case, we also get an
odd warning about sizeof-pointer-memaccess, which doesn\'t seem right
(the sizeof is for an array that happens to be the same as the second
strncpy argument).

To work around the bogus warning, I use a plain \'XFSLABEL_MAX\' for
the strncpy() length when copying the label in getlabel. For setlabel(),
using memcpy() with the correct length that is already known avoids
the second warning and is slightly simpler.

In a related issue, it appears that we accidentally skip the trailing
\\0 when copying a 12-character label back to user space in getlabel().
Using the correct sizeof() argument here copies the extra character.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=85602
Fixes: f7664b31975b ("xfs: implement online get/set fs label")
Cc: Eric Sandeen <sandeen@redhat.com>
Cc: Martin Sebor <msebor@gmail.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Eric Sandeen <sandeen@redhat.com>
Reviewed-by: Darrick J. Wong <darrick.wong@oracle.com>
Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'bbe9a70', '2018-04-10', 'Arnd Bergmann', 'tick-sched: avoid a maybe-uninitialized warning', 'tick-sched: avoid a maybe-uninitialized warning

The use of bitfields seems to confuse gcc, leading to a false-positive
warning in all compiler versions:

kernel/time/tick-sched.c: In function \'tick_nohz_idle_exit\':
kernel/time/tick-sched.c:538:2: error: \'now\' may be used uninitialized in this function [-Werror=maybe-uninitialized]

This introduces a temporary variable to track the flags so gcc
doesn\'t have to evaluate twice, eliminating the code path that
leads to the warning.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=85301
Fixes: 1cae544d42d2 ("nohz: Gather tick_sched booleans under a common flag field")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '87e0d4f', '2018-03-21', 'Daniel Borkmann', 'kbuild: disable clang\'s default use of -fmerge-all-constants', 'kbuild: disable clang\'s default use of -fmerge-all-constants

Prasad reported that he has seen crashes in BPF subsystem with netd
on Android with arm64 in the form of (note, the taint is unrelated):

  [ 4134.721483] Unable to handle kernel paging request at virtual address 800000001
  [ 4134.820925] Mem abort info:
  [ 4134.901283]   Exception class = DABT (current EL), IL = 32 bits
  [ 4135.016736]   SET = 0, FnV = 0
  [ 4135.119820]   EA = 0, S1PTW = 0
  [ 4135.201431] Data abort info:
  [ 4135.301388]   ISV = 0, ISS = 0x00000021
  [ 4135.359599]   CM = 0, WnR = 0
  [ 4135.470873] user pgtable: 4k pages, 39-bit VAs, pgd = ffffffe39b946000
  [ 4135.499757] [0000000800000001] *pgd=0000000000000000, *pud=0000000000000000
  [ 4135.660725] Internal error: Oops: 96000021 [#1] PREEMPT SMP
  [ 4135.674610] Modules linked in:
  [ 4135.682883] CPU: 5 PID: 1260 Comm: netd Tainted: G S      W       4.14.19+ #1
  [ 4135.716188] task: ffffffe39f4aa380 task.stack: ffffff801d4e0000
  [ 4135.731599] PC is at bpf_prog_add+0x20/0x68
  [ 4135.741746] LR is at bpf_prog_inc+0x20/0x2c
  [ 4135.751788] pc : [<ffffff94ab7ad584>] lr : [<ffffff94ab7ad638>] pstate: 60400145
  [ 4135.769062] sp : ffffff801d4e3ce0
  [...]
  [ 4136.258315] Process netd (pid: 1260, stack limit = 0xffffff801d4e0000)
  [ 4136.273746] Call trace:
  [...]
  [ 4136.442494] 3ca0: ffffff94ab7ad584 0000000060400145 ffffffe3a01bf8f8 0000000000000006
  [ 4136.460936] 3cc0: 0000008000000000 ffffff94ab844204 ffffff801d4e3cf0 ffffff94ab7ad584
  [ 4136.479241] [<ffffff94ab7ad584>] bpf_prog_add+0x20/0x68
  [ 4136.491767] [<ffffff94ab7ad638>] bpf_prog_inc+0x20/0x2c
  [ 4136.504536] [<ffffff94ab7b5d08>] bpf_obj_get_user+0x204/0x22c
  [ 4136.518746] [<ffffff94ab7ade68>] SyS_bpf+0x5a8/0x1a88

Android\'s netd was basically pinning the uid cookie BPF map in BPF
fs (/sys/fs/bpf/traffic_cookie_uid_map) and later on retrieving it
again resulting in above panic. Issue is that the map was wrongly
identified as a prog! Above kernel was compiled with clang 4.0,
and it turns out that clang decided to merge the bpf_prog_iops and
bpf_map_iops into a single memory location, such that the two i_ops
could then not be distinguished anymore.

Reason for this miscompilation is that clang has the more aggressive
-fmerge-all-constants enabled by default. In fact, clang source code
has a comment about it in lib/AST/ExprConstant.cpp on why it is okay
to do so:

  Pointers with different bases cannot represent the same object.
  (Note that clang defaults to -fmerge-all-constants, which can
  lead to inconsistent results for comparisons involving the address
  of a constant; this generally doesn\'t matter in practice.)

The issue never appeared with gcc however, since gcc does not enable
-fmerge-all-constants by default and even *explicitly* states in
it\'s option description that using this flag results in non-conforming
behavior, quote from man gcc:

  Languages like C or C++ require each variable, including multiple
  instances of the same variable in recursive calls, to have distinct
  locations, so using this option results in non-conforming behavior.

There are also various clang bug reports open on that matter [1],
where clang developers acknowledge the non-conforming behavior,
and refer to disabling it with -fno-merge-all-constants. But even
if this gets fixed in clang today, there are already users out there
that triggered this. Thus, fix this issue by explicitly adding
-fno-merge-all-constants to the kernel\'s Makefile to generically
disable this optimization, since potentially other places in the
kernel could subtly break as well.

Note, there is also a flag called -fmerge-constants (not supported
by clang), which is more conservative and only applies to strings
and it\'s enabled in gcc\'s -O/-O2/-O3/-Os optimization levels. In
gcc\'s code, the two flags -fmerge-{all-,}constants share the same
variable internally, so when disabling it via -fno-merge-all-constants,
then we really don\'t merge any const data (e.g. strings), and text
size increases with gcc (14,927,214 -> 14,942,646 for vmlinux.o).

  $ gcc -fverbose-asm -O2 foo.c -S -o foo.S
    -> foo.S lists -fmerge-constants under options enabled
  $ gcc -fverbose-asm -O2 -fno-merge-all-constants foo.c -S -o foo.S
    -> foo.S doesn\'t list -fmerge-constants under options enabled
  $ gcc -fverbose-asm -O2 -fno-merge-all-constants -fmerge-constants foo.c -S -o foo.S
    -> foo.S lists -fmerge-constants under options enabled

Thus, as a workaround we need to set both -fno-merge-all-constants
*and* -fmerge-constants in the Makefile in order for text size to
stay as is.

  [1] https://bugs.llvm.org/show_bug.cgi?id=18538

Reported-by: Prasad Sodagudi <psodagud@codeaurora.org>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Chenbo Feng <fengc@google.com>
Cc: Richard Smith <richard-llvm@metafoo.co.uk>
Cc: Chandler Carruth <chandlerc@gmail.com>
Cc: linux-kernel@vger.kernel.org
Tested-by: Prasad Sodagudi <psodagud@codeaurora.org>
Acked-by: Alexei Starovoitov <ast@kernel.org>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a398e04', '2018-03-06', 'Arnd Bergmann', 'media: s3c-camif: fix out-of-bounds array access', 'media: s3c-camif: fix out-of-bounds array access

While experimenting with older compiler versions, I ran
into a warning that no longer shows up on gcc-4.8 or newer:

drivers/media/platform/s3c-camif/camif-capture.c: In function \'__camif_subdev_try_format\':
drivers/media/platform/s3c-camif/camif-capture.c:1265:25: error: array subscript is below array bounds

This is an off-by-one bug, leading to an access before the start of the
array, while newer compilers silently assume this undefined behavior
cannot happen and leave the loop at index 0 if no other entry matches.

As Sylvester explains, we actually need to ensure that the
value is within the range, so this reworks the loop to be
easier to parse correctly, and an additional check to fall
back on the first format value for any unexpected input.

I found an existing gcc bug for it and added a reduced version
of the function there.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=69249#c3
Fixes: babde1c243b2 ("[media] V4L: Add driver for S3C24XX/S3C64XX SoC series camera interface")

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '51d42f0', '2018-03-06', 'Segher Boessenkool', 'powerpc: Keep const vars out of writable .sdata', 'powerpc: Keep const vars out of writable .sdata

Newer gcc will support "-mno-readonly-in-sdata"[1], which makes sure that
the optimization on PPC32 for variables getting moved into the .sdata
section will not apply to const variables (which must be in .rodata).

This was originally noticed in mm/rodata_test.c when rodata_test_data
was not static:

c0695034 g     O .data	00000004 rodata_test_data

After this patch with an updated compiler, this is correctly in .rodata.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82411

Reported-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Segher Boessenkool <segher@kernel.crashing.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ca79bec', '2018-02-23', 'Arnd Bergmann', 'ipv6 sit: work around bogus gcc-8 -Wrestrict warning', 'ipv6 sit: work around bogus gcc-8 -Wrestrict warning

gcc-8 has a new warning that detects overlapping input and output arguments
in memcpy(). It triggers for sit_init_net() calling ipip6_tunnel_clone_6rd(),
which is actually correct:

net/ipv6/sit.c: In function \'sit_init_net\':
net/ipv6/sit.c:192:3: error: \'memcpy\' source argument is the same as destination [-Werror=restrict]

The problem here is that the logic detecting the memcpy() arguments finds them
to be the same, but the conditional that tests for the input and output of
ipip6_tunnel_clone_6rd() to be identical is not a compile-time constant.

We know that netdev_priv(t->dev) is the same as t for a tunnel device,
and comparing "dev" directly here lets the compiler figure out as well
that \'dev == sitn->fb_tunnel_dev\' when called from sit_init_net(), so
it no longer warns.

This code is old, so Cc stable to make sure that we don\'t get the warning
for older kernels built with new gcc.

Cc: Martin Sebor <msebor@gmail.com>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83456
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '173a3ef', '2018-02-22', 'Arnd Bergmann', 'bug.h: work around GCC PR82365 in BUG()', 'bug.h: work around GCC PR82365 in BUG()

Looking at functions with large stack frames across all architectures
led me discovering that BUG() suffers from the same problem as
fortify_panic(), which I\'ve added a workaround for already.

In short, variables that go out of scope by calling a noreturn function
or __builtin_unreachable() keep using stack space in functions
afterwards.

A workaround that was identified is to insert an empty assembler
statement just before calling the function that doesn\'t return.  I\'m
adding a macro "barrier_before_unreachable()" to document this, and
insert calls to that in all instances of BUG() that currently suffer
from this problem.

The files that saw the largest change from this had these frame sizes
before, and much less with my patch:

  fs/ext4/inode.c:82:1: warning: the frame size of 1672 bytes is larger than 800 bytes [-Wframe-larger-than=]
  fs/ext4/namei.c:434:1: warning: the frame size of 904 bytes is larger than 800 bytes [-Wframe-larger-than=]
  fs/ext4/super.c:2279:1: warning: the frame size of 1160 bytes is larger than 800 bytes [-Wframe-larger-than=]
  fs/ext4/xattr.c:146:1: warning: the frame size of 1168 bytes is larger than 800 bytes [-Wframe-larger-than=]
  fs/f2fs/inode.c:152:1: warning: the frame size of 1424 bytes is larger than 800 bytes [-Wframe-larger-than=]
  net/netfilter/ipvs/ip_vs_core.c:1195:1: warning: the frame size of 1068 bytes is larger than 800 bytes [-Wframe-larger-than=]
  net/netfilter/ipvs/ip_vs_core.c:395:1: warning: the frame size of 1084 bytes is larger than 800 bytes [-Wframe-larger-than=]
  net/netfilter/ipvs/ip_vs_ftp.c:298:1: warning: the frame size of 928 bytes is larger than 800 bytes [-Wframe-larger-than=]
  net/netfilter/ipvs/ip_vs_ftp.c:418:1: warning: the frame size of 908 bytes is larger than 800 bytes [-Wframe-larger-than=]
  net/netfilter/ipvs/ip_vs_lblcr.c:718:1: warning: the frame size of 960 bytes is larger than 800 bytes [-Wframe-larger-than=]
  drivers/net/xen-netback/netback.c:1500:1: warning: the frame size of 1088 bytes is larger than 800 bytes [-Wframe-larger-than=]

In case of ARC and CRIS, it turns out that the BUG() implementation
actually does return (or at least the compiler thinks it does),
resulting in lots of warnings about uninitialized variable use and
leaving noreturn functions, such as:

  block/cfq-iosched.c: In function \'cfq_async_queue_prio\':
  block/cfq-iosched.c:3804:1: error: control reaches end of non-void function [-Werror=return-type]
  include/linux/dmaengine.h: In function \'dma_maxpq\':
  include/linux/dmaengine.h:1123:1: error: control reaches end of non-void function [-Werror=return-type]

This makes them call __builtin_trap() instead, which should normally
dump the stack and kill the current process, like some of the other
architectures already do.

I tried adding barrier_before_unreachable() to panic() and
fortify_panic() as well, but that had very little effect, so I\'m not
submitting that patch.

Vineet said:

: For ARC, it is double win.
:
: 1. Fixes 3 -Wreturn-type warnings
:
: | ../net/core/ethtool.c:311:1: warning: control reaches end of non-void function
: [-Wreturn-type]
: | ../kernel/sched/core.c:3246:1: warning: control reaches end of non-void function
: [-Wreturn-type]
: | ../include/linux/sunrpc/svc_xprt.h:180:1: warning: control reaches end of
: non-void function [-Wreturn-type]
:
: 2.  bloat-o-meter reports code size improvements as gcc elides the
:    generated code for stack return.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82365
Link: http://lkml.kernel.org/r/20171219114112.939391-1-arnd@arndb.de
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Vineet Gupta <vgupta@synopsys.com>	[arch/arc]
Tested-by: Vineet Gupta <vgupta@synopsys.com>	[arch/arc]
Cc: Mikael Starvik <starvik@axis.com>
Cc: Jesper Nilsson <jesper.nilsson@axis.com>
Cc: Tony Luck <tony.luck@intel.com>
Cc: Fenghua Yu <fenghua.yu@intel.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Christopher Li <sparse@chrisli.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '85c615e', '2018-02-21', 'Arnd Bergmann', 'x86/oprofile: Fix bogus GCC-8 warning in nmi_setup()', 'x86/oprofile: Fix bogus GCC-8 warning in nmi_setup()

GCC-8 shows a warning for the x86 oprofile code that copies per-CPU
data from CPU 0 to all other CPUs, which when building a non-SMP
kernel turns into a memcpy() with identical source and destination
pointers:

 arch/x86/oprofile/nmi_int.c: In function \'mux_clone\':
 arch/x86/oprofile/nmi_int.c:285:2: error: \'memcpy\' source argument is the same as destination [-Werror=restrict]
   memcpy(per_cpu(cpu_msrs, cpu).multiplex,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          per_cpu(cpu_msrs, 0).multiplex,
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          sizeof(struct op_msr) * model->num_virt_counters);
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 arch/x86/oprofile/nmi_int.c: In function \'nmi_setup\':
 arch/x86/oprofile/nmi_int.c:466:3: error: \'memcpy\' source argument is the same as destination [-Werror=restrict]
 arch/x86/oprofile/nmi_int.c:470:3: error: \'memcpy\' source argument is the same as destination [-Werror=restrict]

I have analyzed a number of such warnings now: some are valid and the
GCC warning is welcome. Others turned out to be false-positives, and
GCC was changed to not warn about those any more. This is a corner case
that is a false-positive but the GCC developers feel it\'s better to keep
warning about it.

In this case, it seems best to work around it by telling GCC
a little more clearly that this code path is never hit with
an IS_ENABLED() configuration check.

Cc:stable as we also want old kernels to build cleanly with GCC-8.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Cc: Jessica Yu <jeyu@kernel.org>
Cc: Kees Cook <keescook@chromium.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Martin Sebor <msebor@gcc.gnu.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Robert Richter <rric@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: oprofile-list@lists.sf.net
Cc: stable@vger.kernel.org
Link: http://lkml.kernel.org/r/20180220205826.2008875-1-arnd@arndb.de
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=84095
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '67870eb', '2018-02-16', 'Arnd Bergmann', 'ARM: kvm: fix building with gcc-8', 'ARM: kvm: fix building with gcc-8

In banked-sr.c, we use a top-level \'__asm__(".arch_extension virt")\'
statement to allow compilation of a multi-CPU kernel for ARMv6
and older ARMv7-A that don\'t normally support access to the banked
registers.

This is considered to be a programming error by the gcc developers
and will no longer work in gcc-8, where we now get a build error:

/tmp/cc4Qy7GR.s:34: Error: Banked registers are not available with this architecture. -- `mrs r3,SP_usr\'
/tmp/cc4Qy7GR.s:41: Error: Banked registers are not available with this architecture. -- `mrs r3,ELR_hyp\'
/tmp/cc4Qy7GR.s:55: Error: Banked registers are not available with this architecture. -- `mrs r3,SP_svc\'
/tmp/cc4Qy7GR.s:62: Error: Banked registers are not available with this architecture. -- `mrs r3,LR_svc\'
/tmp/cc4Qy7GR.s:69: Error: Banked registers are not available with this architecture. -- `mrs r3,SPSR_svc\'
/tmp/cc4Qy7GR.s:76: Error: Banked registers are not available with this architecture. -- `mrs r3,SP_abt\'

Passign the \'-march-armv7ve\' flag to gcc works, and is ok here, because
we know the functions won\'t ever be called on pre-ARMv7VE machines.
Unfortunately, older compiler versions (4.8 and earlier) do not understand
that flag, so we still need to keep the asm around.

Backporting to stable kernels (4.6+) is needed to allow those to be built
with future compilers as well.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=84129
Fixes: 33280b4cd1dc ("ARM: KVM: Add banked registers save/restore")
Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Christoffer Dall <christoffer.dall@linaro.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e7c52b8', '2018-02-07', 'Arnd Bergmann', 'kasan: rework Kconfig settings', 'kasan: rework Kconfig settings

We get a lot of very large stack frames using gcc-7.0.1 with the default
-fsanitize-address-use-after-scope --param asan-stack=1 options, which can
easily cause an overflow of the kernel stack, e.g.

  drivers/gpu/drm/i915/gvt/handlers.c:2434:1: warning: the frame size of 46176 bytes is larger than 3072 bytes
  drivers/net/wireless/ralink/rt2x00/rt2800lib.c:5650:1: warning: the frame size of 23632 bytes is larger than 3072 bytes
  lib/atomic64_test.c:250:1: warning: the frame size of 11200 bytes is larger than 3072 bytes
  drivers/gpu/drm/i915/gvt/handlers.c:2621:1: warning: the frame size of 9208 bytes is larger than 3072 bytes
  drivers/media/dvb-frontends/stv090x.c:3431:1: warning: the frame size of 6816 bytes is larger than 3072 bytes
  fs/fscache/stats.c:287:1: warning: the frame size of 6536 bytes is larger than 3072 bytes

To reduce this risk, -fsanitize-address-use-after-scope is now split out
into a separate CONFIG_KASAN_EXTRA Kconfig option, leading to stack
frames that are smaller than 2 kilobytes most of the time on x86_64.  An
earlier version of this patch also prevented combining KASAN_EXTRA with
KASAN_INLINE, but that is no longer necessary with gcc-7.0.1.

All patches to get the frame size below 2048 bytes with CONFIG_KASAN=y
and CONFIG_KASAN_EXTRA=n have been merged by maintainers now, so we can
bring back that default now.  KASAN_EXTRA=y still causes lots of
warnings but now defaults to !COMPILE_TEST to disable it in
allmodconfig, and it remains disabled in all other defconfigs since it
is a new option.  I arbitrarily raise the warning limit for KASAN_EXTRA
to 3072 to reduce the noise, but an allmodconfig kernel still has around
50 warnings on gcc-7.

I experimented a bit more with smaller stack frames and have another
follow-up series that reduces the warning limit for 64-bit architectures
to 1280 bytes (without CONFIG_KASAN).

With earlier versions of this patch series, I also had patches to address
the warnings we get with KASAN and/or KASAN_EXTRA, using a
"noinline_if_stackbloat" annotation.

That annotation now got replaced with a gcc-8 bugfix (see
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715) and a workaround for
older compilers, which means that KASAN_EXTRA is now just as bad as
before and will lead to an instant stack overflow in a few extreme
cases.

This reverts parts of commit 3f181b4d8652 ("lib/Kconfig.debug: disable
-Wframe-larger-than warnings with KASAN=y").  Two patches in linux-next
should be merged first to avoid introducing warnings in an allmodconfig
build:
  3cd890dbe2a4 ("media: dvb-frontends: fix i2c access helpers for KASAN")
  16c3ada89cff ("media: r820t: fix r820t_write_reg for KASAN")

Do we really need to backport this?

I think we do: without this patch, enabling KASAN will lead to
unavoidable kernel stack overflow in certain device drivers when built
with gcc-7 or higher on linux-4.10+ or any version that contains a
backport of commit c5caf21ab0cf8.  Most people are probably still on
older compilers, but it will get worse over time as they upgrade their
distros.

The warnings we get on kernels older than this should all be for code
that uses dangerously large stack frames, though most of them do not
cause an actual stack overflow by themselves.The asan-stack option was
added in linux-4.0, and commit 3f181b4d8652 ("lib/Kconfig.debug:
disable -Wframe-larger-than warnings with KASAN=y") effectively turned
off the warning for allmodconfig kernels, so I would like to see this
fix backported to any kernels later than 4.0.

I have done dozens of fixes for individual functions with stack frames
larger than 2048 bytes with asan-stack, and I plan to make sure that
all those fixes make it into the stable kernels as well (most are
already there).

Part of the complication here is that asan-stack (from 4.0) was
originally assumed to always require much larger stacks, but that
turned out to be a combination of multiple gcc bugs that we have now
worked around and fixed, but sanitize-address-use-after-scope (from
v4.10) has a much higher inherent stack usage and also suffers from at
least three other problems that we have analyzed but not yet fixed
upstream, each of them makes the stack usage more severe than it should
be.

Link: http://lkml.kernel.org/r/20171221134744.2295529-1-arnd@arndb.de
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ff5fdaf', '2018-01-21', 'Nicolas Pitre', 'ARM: 8745/1: get rid of __memzero()', 'ARM: 8745/1: get rid of __memzero()

The __memzero assembly code is almost identical to memset\'s except for
two orr instructions. The runtime performance of __memset(p, n) and
memset(p, 0, n) is accordingly almost identical.

However, the memset() macro used to guard against a zero length and to
call __memzero at compile time when the fill value is a constant zero
interferes with compiler optimizations.

Arnd found tha the test against a zero length brings up some new
warnings with gcc v8:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82103

And successively rremoving the test against a zero length and the call
to __memzero optimization produces the following kernel sizes for
defconfig with gcc 6:

    text     data     bss       dec       hex  filename
12248142  6278960  413588  18940690   1210312  vmlinux.orig
12244474  6278960  413588  18937022   120f4be  vmlinux.no_zero_test
12239160  6278960  413588  18931708   120dffc  vmlinux.no_memzero

So it is probably not worth keeping __memzero around given that the
compiler can do a better job at inlining trivial memset(p,0,n) on its
own. And the memset code already handles a zero length just fine.

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nicolas Pitre <nico@linaro.org>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6e36719', '2018-01-20', 'Arnd Bergmann', 'crypto: aes-generic - fix aes-generic regression on powerpc', 'crypto: aes-generic - fix aes-generic regression on powerpc

My last bugfix added -Os on the command line, which unfortunately caused
a build regression on powerpc in some configurations.

I\'ve done some more analysis of the original problem and found slightly
different workaround that avoids this regression and also results in
better performance on gcc-7.0: -fcode-hoisting is an optimization step
that got added in gcc-7 and that for all gcc-7 versions causes worse
performance.

This disables -fcode-hoisting on all compilers that understand the option.
For gcc-7.1 and 7.2 I found the same performance as my previous patch
(using -Os), in gcc-7.0 it was even better. On gcc-8 I could see no
change in performance from this patch. In theory, code hoisting should
not be able make things better for the AES cipher, so leaving it
disabled for gcc-8 only serves to simplify the Makefile change.

Reported-by: kbuild test robot <fengguang.wu@intel.com>
Link: https://www.mail-archive.com/linux-crypto@vger.kernel.org/msg30418.html
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83356
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83651
Fixes: 148b974deea9 ("crypto: aes-generic - build with -Os on gcc-7+")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '148b974', '2018-01-12', 'Arnd Bergmann', 'crypto: aes-generic - build with -Os on gcc-7+', 'crypto: aes-generic - build with -Os on gcc-7+

While testing other changes, I discovered that gcc-7.2.1 produces badly
optimized code for aes_encrypt/aes_decrypt. This is especially true when
CONFIG_UBSAN_SANITIZE_ALL is enabled, where it leads to extremely
large stack usage that in turn might cause kernel stack overflows:

crypto/aes_generic.c: In function \'aes_encrypt\':
crypto/aes_generic.c:1371:1: warning: the frame size of 4880 bytes is larger than 2048 bytes [-Wframe-larger-than=]
crypto/aes_generic.c: In function \'aes_decrypt\':
crypto/aes_generic.c:1441:1: warning: the frame size of 4864 bytes is larger than 2048 bytes [-Wframe-larger-than=]

I verified that this problem exists on all architectures that are
supported by gcc-7.2, though arm64 in particular is less affected than
the others. I also found that gcc-7.1 and gcc-8 do not show the extreme
stack usage but still produce worse code than earlier versions for this
file, apparently because of optimization passes that generally provide
a substantial improvement in object code quality but understandably fail
to find any shortcuts in the AES algorithm.

Possible workarounds include

a) disabling -ftree-pre and -ftree-sra optimizations, this was an earlier
   patch I tried, which reliably fixed the stack usage, but caused a
   serious performance regression in some versions, as later testing
   found.

b) disabling UBSAN on this file or all ciphers, as suggested by Ard
   Biesheuvel. This would lead to massively better crypto performance in
   UBSAN-enabled kernels and avoid the stack usage, but there is a concern
   over whether we should exclude arbitrary files from UBSAN at all.

c) Forcing the optimization level in a different way. Similar to a),
   but rather than deselecting specific optimization stages,
   this now uses "gcc -Os" for this file, regardless of the
   CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE/SIZE option. This is a reliable
   workaround for the stack consumption on all architecture, and I\'ve
   retested the performance results now on x86, cycles/byte (lower is
   better) for cbc(aes-generic) with 256 bit keys:

			-O2     -Os
	gcc-6.3.1	14.9	15.1
	gcc-7.0.1	14.7	15.3
	gcc-7.1.1	15.3	14.7
	gcc-7.2.1	16.8	15.9
	gcc-8.0.0	15.5	15.6

This implements the option c) by enabling forcing -Os on all compiler
versions starting with gcc-7.1. As a workaround for PR83356, it would
only be needed for gcc-7.2+ with UBSAN enabled, but since it also shows
better performance on gcc-7.1 without UBSAN, it seems appropriate to
use the faster version here as well.

Side note: during testing, I also played with the AES code in libressl,
which had a similar performance regression from gcc-6 to gcc-7.2,
but was three times slower overall. It might be interesting to
investigate that further and possibly port the Linux implementation
into that.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83356
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83651
Cc: Richard Biener <rguenther@suse.de>
Cc: Jakub Jelinek <jakub@gcc.gnu.org>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '9e343e8', '2017-12-18', 'Arnd Bergmann', 'mtd: cfi: convert inline functions to macros', 'mtd: cfi: convert inline functions to macros

The map_word_() functions, dating back to linux-2.6.8, try to perform
bitwise operations on a \'map_word\' structure. This may have worked
with compilers that were current then (gcc-3.4 or earlier), but end
up being rather inefficient on any version I could try now (gcc-4.4 or
higher). Specifically we hit a problem analyzed in gcc PR81715 where we
fail to reuse the stack space for local variables.

This can be seen immediately in the stack consumption for
cfi_staa_erase_varsize() and other functions that (with CONFIG_KASAN)
can be up to 2200 bytes. Changing the inline functions into macros brings
this down to 1280 bytes.  Without KASAN, the same problem exists, but
the stack consumption is lower to start with, my patch shrinks it from
920 to 496 bytes on with arm-linux-gnueabi-gcc-5.4, and saves around
1KB in .text size for cfi_cmdset_0020.c, as it avoids copying map_word
structures for each call to one of these helpers.

With the latest gcc-8 snapshot, the problem is fixed in upstream gcc,
but nobody uses that yet, so we should still work around it in mainline
kernels and probably backport the workaround to stable kernels as well.
We had a couple of other functions that suffered from the same gcc bug,
and all of those had a simpler workaround involving dummy variables
in the inline function. Unfortunately that did not work here, the
macro hack was the best I could come up with.

It would also be helpful to have someone to a little performance testing
on the patch, to see how much it helps in terms of CPU utilitzation.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715
Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '3cd890d', '2017-12-16', 'Arnd Bergmann', 'media: dvb-frontends: fix i2c access helpers for KASAN', 'media: dvb-frontends: fix i2c access helpers for KASAN

A typical code fragment was copied across many dvb-frontend drivers and
causes large stack frames when built with with CONFIG_KASAN on gcc-5/6/7:

drivers/media/dvb-frontends/cxd2841er.c:3225:1: error: the frame size of 3992 bytes is larger than 3072 bytes [-Werror=frame-larger-than=]
drivers/media/dvb-frontends/cxd2841er.c:3404:1: error: the frame size of 3136 bytes is larger than 3072 bytes [-Werror=frame-larger-than=]
drivers/media/dvb-frontends/stv0367.c:3143:1: error: the frame size of 4016 bytes is larger than 3072 bytes [-Werror=frame-larger-than=]
drivers/media/dvb-frontends/stv090x.c:3430:1: error: the frame size of 5312 bytes is larger than 3072 bytes [-Werror=frame-larger-than=]
drivers/media/dvb-frontends/stv090x.c:4248:1: error: the frame size of 4872 bytes is larger than 3072 bytes [-Werror=frame-larger-than=]

gcc-8 now solves this by consolidating the stack slots for the argument
variables, but on older compilers we can get the same behavior by taking
the pointer of a local variable rather than the inline function argument.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715

Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '16c3ada', '2017-12-16', 'Arnd Bergmann', 'media: r820t: fix r820t_write_reg for KASAN', 'media: r820t: fix r820t_write_reg for KASAN

With CONFIG_KASAN, we get an overly long stack frame due to inlining
the register access functions:

drivers/media/tuners/r820t.c: In function \'generic_set_freq.isra.7\':
drivers/media/tuners/r820t.c:1334:1: error: the frame size of 2880 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]

This is caused by a gcc bug that has now been fixed in gcc-8.
To work around the problem, we can pass the register data
through a local variable that older gcc versions can optimize
out as well.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '146734b', '2017-12-15', 'Arnd Bergmann', 'string.h: workaround for increased stack usage', 'string.h: workaround for increased stack usage

The hardened strlen() function causes rather large stack usage in at
least one file in the kernel, in particular when CONFIG_KASAN is
enabled:

  drivers/media/usb/em28xx/em28xx-dvb.c: In function \'em28xx_dvb_init\':
  drivers/media/usb/em28xx/em28xx-dvb.c:2062:1: error: the frame size of 3256 bytes is larger than 204 bytes [-Werror=frame-larger-than=]

Analyzing this problem led to the discovery that gcc fails to merge the
stack slots for the i2c_board_info[] structures after we strlcpy() into
them, due to the \'noreturn\' attribute on the source string length check.

I reported this as a gcc bug, but it is unlikely to get fixed for gcc-8,
since it is relatively easy to work around, and it gets triggered
rarely.  An earlier workaround I did added an empty inline assembly
statement before the call to fortify_panic(), which works surprisingly
well, but is really ugly and unintuitive.

This is a new approach to the same problem, this time addressing it by
not calling the \'extern __real_strnlen()\' function for string constants
where __builtin_strlen() is a compile-time constant and therefore known
to be safe.

We do this by checking if the last character in the string is a
compile-time constant \'\\0\'.  If it is, we can assume that strlen() of
the string is also constant.

As a side-effect, this should also improve the object code output for
any other call of strlen() on a string constant.

[akpm@linux-foundation.org: add comment]
Link: http://lkml.kernel.org/r/20171205215143.3085755-1-arnd@arndb.de
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82365
Link: https://patchwork.kernel.org/patch/9980413/
Link: https://patchwork.kernel.org/patch/9974047/
Fixes: 6974f0c4555 ("include/linux/string.h: add the option of fortified string.h functions")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Cc: Kees Cook <keescook@chromium.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Daniel Micay <danielmicay@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Martin Wilck <mwilck@suse.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd15809f', '2017-11-18', 'Arnd Bergmann', 'iopoll: avoid -Wint-in-bool-context warning', 'iopoll: avoid -Wint-in-bool-context warning

When we pass the result of a multiplication as the timeout or the delay,
we can get a warning from gcc-7:

  drivers/mmc/host/bcm2835.c:596:149: error: \'*\' in boolean context, suggest \'&&\' instead [-Werror=int-in-bool-context]
  drivers/mfd/arizona-core.c:247:195: error: \'*\' in boolean context, suggest \'&&\' instead [-Werror=int-in-bool-context]
  drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c:49:27: error: \'*\' in boolean context, suggest \'&&\' instead [-Werror=int-in-bool-context]

The warning is a bit questionable inside of a macro, but this is
intentional on the side of the gcc developers.  It is also an indication
of another problem: we evaluate the timeout and sleep arguments multiple
times, which can have undesired side-effects when those are complex
expressions.

This changes the two iopoll variants to use local variables for storing
copies of the timeouts.  This adds some more type safety, and avoids
both the double-evaluation and the gcc warning.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81484
Link: http://lkml.kernel.org/r/20170726133756.2161367-1-arnd@arndb.de
Link: http://lkml.kernel.org/r/20171102114048.1526955-1-arnd@arndb.de
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '3f2a162', '2017-11-08', 'Arnd Bergmann', 'rtlwifi: fix uninitialized rtlhal->last_suspend_sec time', 'rtlwifi: fix uninitialized rtlhal->last_suspend_sec time

We set rtlhal->last_suspend_sec to an uninitialized stack variable,
but unfortunately gcc never warned about this, I only found it
while working on another patch. I opened a gcc bug for this.

Presumably the value of rtlhal->last_suspend_sec is not all that
important, but it does get used, so we probably want the
patch backported to stable kernels.

Cc: stable@vger.kernel.org
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82839
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Larry Finger <Larry.Finger@lwfinger.net>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1b0c22e', '2017-10-14', 'Arnd Bergmann', 'regmap: avoid -Wint-in-bool-context warning', 'regmap: avoid -Wint-in-bool-context warning

When we pass the result of a multiplication as the timeout or the delay,
we can get a warning from gcc-7:

drivers/mmc/host/bcm2835.c:596:149: error: \'*\' in boolean context, suggest \'&&\' instead [-Werror=int-in-bool-context]
drivers/mfd/arizona-core.c:247:195: error: \'*\' in boolean context, suggest \'&&\' instead [-Werror=int-in-bool-context]
drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c:49:27: error: \'*\' in boolean context, suggest \'&&\' instead [-Werror=int-in-bool-context]

The warning is a bit questionable inside of a macro, but this is
intentional on the side of the gcc developers.  It is also an indication
of another problem: we evaluate the timeout and sleep arguments multiple
times, which can have undesired side-effects when those are complex
expressions.

This changes the two regmap variants to use local variables for storing
copies of the timeouts.  This adds some more type safety, and avoids both
the double-evaluation and the gcc warning.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81484
Link: http://lkml.kernel.org/r/20170726133756.2161367-1-arnd@arndb.de
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Mark Brown <broonie@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5dfbf6c', '2017-10-05', 'Arnd Bergmann', '[media] rcar_drif: fix potential uninitialized variable use', '[media] rcar_drif: fix potential uninitialized variable use

Older compilers like gcc-4.6 may run into a case that returns
an uninitialized variable from rcar_drif_enable_rx() if that
function was ever called with an empty cur_ch_mask:

drivers/media/platform/rcar_drif.c:658:2: error: ‘ret’ may be used uninitialized in this function [-Werror=uninitialized]

Newer compilers don\'t have that problem as they optimize the
\'ret\' variable away and just return zero in that case.

This changes the function to return -EINVAL for this particular
failure, to make it consistent across all compiler versions.
In case gcc gets changed to report a warning for it in the
future, it\'s also a good idea to shut it up now.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82203

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Ramesh Shanmugasundaram <ramesh.shanmugasundaram@bp.renesas.com>
Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b4391db', '2017-09-26', 'Arnd Bergmann', 'netlink: fix nla_put_{u8,u16,u32} for KASAN', 'netlink: fix nla_put_{u8,u16,u32} for KASAN

When CONFIG_KASAN is enabled, the "--param asan-stack=1" causes rather large
stack frames in some functions. This goes unnoticed normally because
CONFIG_FRAME_WARN is disabled with CONFIG_KASAN by default as of commit
3f181b4d8652 ("lib/Kconfig.debug: disable -Wframe-larger-than warnings with
KASAN=y").

The kernelci.org build bot however has the warning enabled and that led
me to investigate it a little further, as every build produces these warnings:

net/wireless/nl80211.c:4389:1: warning: the frame size of 2240 bytes is larger than 2048 bytes [-Wframe-larger-than=]
net/wireless/nl80211.c:1895:1: warning: the frame size of 3776 bytes is larger than 2048 bytes [-Wframe-larger-than=]
net/wireless/nl80211.c:1410:1: warning: the frame size of 2208 bytes is larger than 2048 bytes [-Wframe-larger-than=]
net/bridge/br_netlink.c:1282:1: warning: the frame size of 2544 bytes is larger than 2048 bytes [-Wframe-larger-than=]

Most of this problem is now solved in gcc-8, which can consolidate
the stack slots for the inline function arguments. On older compilers
we can add a workaround by declaring a local variable in each function
to pass the inline function argument.

Cc: stable@vger.kernel.org
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6098d7d', '2017-09-26', 'Arnd Bergmann', 'rocker: fix rocker_tlv_put_* functions for KASAN', 'rocker: fix rocker_tlv_put_* functions for KASAN

Inlining these functions creates lots of stack variables that each take
64 bytes when KASAN is enabled, leading to this warning about potential
stack overflow:

drivers/net/ethernet/rocker/rocker_ofdpa.c: In function \'ofdpa_cmd_flow_tbl_add\':
drivers/net/ethernet/rocker/rocker_ofdpa.c:621:1: error: the frame size of 2752 bytes is larger than 1536 bytes [-Werror=frame-larger-than=]

gcc-8 can now consolidate the stack slots itself, but on older versions
we get the same behavior by using a temporary variable that holds a
copy of the inline function argument.

Cc: stable@vger.kernel.org
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e40a3ae', '2017-09-19', 'Arnd Bergmann', 'gpio: acpi: work around false-positive -Wstring-overflow warning', 'gpio: acpi: work around false-positive -Wstring-overflow warning

gcc-7 notices that the pin_table is an array of 16-bit numbers,
but fails to take the following range check into account:

drivers/gpio/gpiolib-acpi.c: In function \'acpi_gpiochip_request_interrupt\':
drivers/gpio/gpiolib-acpi.c:206:24: warning: \'%02X\' directive writing between 2 and 4 bytes into a region of size 3 [-Wformat-overflow=]
   sprintf(ev_name, "_%c%02X",
                        ^~~~
drivers/gpio/gpiolib-acpi.c:206:20: note: directive argument in the range [0, 65535]
   sprintf(ev_name, "_%c%02X",
                    ^~~~~~~~~
drivers/gpio/gpiolib-acpi.c:206:3: note: \'sprintf\' output between 5 and 7 bytes into a destination of size 5
   sprintf(ev_name, "_%c%02X",
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
    agpio->triggering == ACPI_EDGE_SENSITIVE ? \'E\' : \'L\',
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    pin);
    ~~~~

As suggested by Andy, this changes the format string to have a fixed length.
Since modifying the range check did not help, I also opened a bug against
gcc, see link below.

Fixes: 0d1c28a449c6 ("gpiolib-acpi: Add ACPI5 event model support to gpio.")
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Link: https://patchwork.kernel.org/patch/9840801/
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82123
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Mika Westerberg <mika.westerberg@linux.intel.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'dd88a0a', '2017-08-30', 'Josh Poimboeuf', 'objtool: Handle GCC stack pointer adjustment bug', 'objtool: Handle GCC stack pointer adjustment bug

Arnd Bergmann reported the following warning with GCC 7.1.1:

  fs/fs_pin.o: warning: objtool: pin_kill()+0x139: stack state mismatch: cfa1=7+88 cfa2=7+96

And the kbuild robot reported the following warnings with GCC 5.4.1:

  fs/fs_pin.o: warning: objtool: pin_kill()+0x182: return with modified stack frame
  fs/quota/dquot.o: warning: objtool: dquot_alloc_inode()+0x140: stack state mismatch: cfa1=7+120 cfa2=7+128
  fs/quota/dquot.o: warning: objtool: dquot_free_inode()+0x11a: stack state mismatch: cfa1=7+112 cfa2=7+120

Those warnings are caused by an unusual GCC non-optimization where it
uses an intermediate register to adjust the stack pointer.  It does:

  lea    0x8(%rsp), %rcx
  ...
  mov    %rcx, %rsp

Instead of the obvious:

  add    $0x8, %rsp

It makes no sense to use an intermediate register, so I opened a GCC bug
to track it:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81813

But it\'s not exactly a high-priority bug and it looks like we\'ll be
stuck with this issue for a while.  So for now we have to track register
values when they\'re loaded with stack pointer offsets.

This is kind of a big workaround for a tiny problem, but c\'est la vie.
I hope to eventually create a GCC plugin to implement a big chunk of
objtool\'s functionality.  Hopefully at that point we\'ll be able to
remove of a lot of these GCC-isms from the objtool code.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Reported-by: kbuild test robot <fengguang.wu@intel.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Link: http://lkml.kernel.org/r/6a41a96884c725e7f05413bb7df40cfe824b2444.1504028945.git.jpoimboe@redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5fe5a6c', '2017-08-26', 'Arnd Bergmann', 'scsi: lpfc: avoid false-positive gcc-8 warning', 'scsi: lpfc: avoid false-positive gcc-8 warning

This is an interesting regression with gcc-8, showing a harmless warning
for correct code:

In file included from include/linux/kernel.h:13:0,
                 ...
                 from drivers/scsi/lpfc/lpfc_debugfs.c:23:
include/linux/printk.h:301:2: error: \'eq\' may be used uninitialized in this function [-Werror=maybe-uninitialized]
  printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
  ^~~~~~
In file included from drivers/scsi/lpfc/lpfc_debugfs.c:58:0:
drivers/scsi/lpfc/lpfc_debugfs.h:451:31: note: \'eq\' was declared here

I managed to reduce the warning into a small test case for gcc-8 that I
reported in the gcc bugzilla[1].

As a workaround, this changes the logic to move the two assignments of
\'eq\' out of the conditions and instead make the index conditional.  This
works for all configurations I tried and avoids adding a bogus
initialization.

Acked-by: James Smart <james.smart@broadcom.com>
Link: [1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81958
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '0a44594', '2017-08-15', 'Imre Deak', 'drm/i915: Work around GCC anonymous union initialization bug', 'drm/i915: Work around GCC anonymous union initialization bug

GCC 4.4 can\'t cope with anonymous union initializers which seems to be a
bug in that version (see the Reference) and is fixed since GCC version
4.6. A workaround which is also used elsewhere in the kernel for the
same purpose is to wrap the initialization in curly braces, so do the
same here.

Fixes: b5565a2efc12 ("drm/i915/bxt, glk: Give a proper name to the power well struct phy field")
Reference: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=10676
Reported-by: Fengguang Wu <fengguang.wu@intel.com>
Cc: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Link: https://patchwork.freedesktop.org/patch/msgid/20170814151530.24154-1-imre.deak@intel.com
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'efe967c', '2017-07-30', 'Arnd Bergmann', 'tcp: avoid bogus gcc-7 array-bounds warning', 'tcp: avoid bogus gcc-7 array-bounds warning

When using CONFIG_UBSAN_SANITIZE_ALL, the TCP code produces a
false-positive warning:

net/ipv4/tcp_output.c: In function \'tcp_connect\':
net/ipv4/tcp_output.c:2207:40: error: array subscript is below array bounds [-Werror=array-bounds]
   tp->chrono_stat[tp->chrono_type - 1] += now - tp->chrono_start;
                                        ^~
net/ipv4/tcp_output.c:2207:40: error: array subscript is below array bounds [-Werror=array-bounds]
   tp->chrono_stat[tp->chrono_type - 1] += now - tp->chrono_start;
   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~

I have opened a gcc bug for this, but distros have already shipped
compilers with this problem, and it\'s not clear yet whether there is
a way for gcc to avoid the warning. As the problem is related to the
bitfield access, this introduces a temporary variable to store the old
enum value.

I did not notice this warning earlier, since UBSAN is disabled when
building with COMPILE_TEST, and that was always turned on in both
allmodconfig and randconfig tests.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81601
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '22ff1a3', '2017-07-26', 'Arnd Bergmann', 'platform/x86: alienware-wmi: fix format string overflow warning', 'platform/x86: alienware-wmi: fix format string overflow warning

gcc points out a possible format string overflow for a large value of \'zone\':

drivers/platform/x86/alienware-wmi.c: In function \'alienware_wmi_init\':
drivers/platform/x86/alienware-wmi.c:461:24: error: \'%02X\' directive writing between 2 and 8 bytes into a region of size 6 [-Werror=format-overflow=]
   sprintf(buffer, "zone%02X", i);
                        ^~~~
drivers/platform/x86/alienware-wmi.c:461:19: note: directive argument in the range [0, 2147483646]
   sprintf(buffer, "zone%02X", i);
                   ^~~~~~~~~~
drivers/platform/x86/alienware-wmi.c:461:3: note: \'sprintf\' output between 7 and 13 bytes into a destination of size 10

This replaces the \'int\' variable with an \'u8\' to make sure
it always fits, renaming the variable to \'zone\' for clarity.

Unfortunately, gcc-7.1.1 still warns about it with that change, which
seems to be unintended by the gcc developers. I have opened a bug
against gcc with a reduced test case. As a workaround, I also
change the format string to use "%02hhX", which shuts up the
warning in that version.

Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81483
Link: https://patchwork.ozlabs.org/patch/788415/
Suggested-by: Andy Shevchenko <andy@infradead.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
[andy: added empty lines after u8 zone; definitions]
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5623452', '2017-07-20', 'Arnd Bergmann', 'x86/fpu/math-emu: Avoid bogus -Wint-in-bool-context warning', 'x86/fpu/math-emu: Avoid bogus -Wint-in-bool-context warning

gcc-7.1.1 produces this warning:

  arch/x86/math-emu/reg_add_sub.c: In function \'FPU_add\':
  arch/x86/math-emu/reg_add_sub.c:80:48: error: ?: using integer constants in boolean context [-Werror=int-in-bool-context]

This appears to be a bug in gcc-7.1.1, and I have reported it as
PR81484. The compiler suggests that code written as

	if (a & b ? c : d)

is usually incorrect and should have been

	if (a & (b ? c : d))

However, in this case, we correctly write

	if ((a & b) ? c : d)

and should not get a warning for it.

This adds a dirty workaround for the problem, adding a comparison with
zero inside of the macro. The warning is currently disabled in the kernel,
so we may decide not to apply the patch, and instead wait for future gcc
releases to fix the problem. On the other hand, it seems to be the
only instance of this particular problem.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Cc: Bill Metzenthen <billm@melbpc.org.au>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Link: http://lkml.kernel.org/r/20170719125310.2487451-4-arnd@arndb.de
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81484
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '381f20f', '2017-06-09', 'Davidlohr Bueso', 'security: use READ_ONCE instead of deprecated ACCESS_ONCE', 'security: use READ_ONCE instead of deprecated ACCESS_ONCE

With the new standardized functions, we can replace all ACCESS_ONCE()
calls across relevant security/keyrings/.

ACCESS_ONCE() does not work reliably on non-scalar types. For example
gcc 4.6 and 4.7 might remove the volatile tag for such accesses during
the SRA (scalar replacement of aggregates) step:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145

Update the new calls regardless of if it is a scalar type, this is
cleaner than having three alternatives.

Signed-off-by: Davidlohr Bueso <dbueso@suse.de>
Signed-off-by: David Howells <dhowells@redhat.com>
Signed-off-by: James Morris <james.l.morris@oracle.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a83827d', '2017-04-17', 'Thomas Gleixner', 'x86/intel_rdt: Get rid of anon union', 'x86/intel_rdt: Get rid of anon union

gcc-4.4.3 fails to statically initialize members of a anon union.
See: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=10676

The storage saving is not really worth it and aside of that it will catch
usage of the cache member for bandwidth and vice versa easier.

Fixes: 05b93417ce5b ("x86/intel_rdt/mba: Add primary support for Memory Bandwidth Allocation (MBA)")
Reported-by: Fengguang Wu <fengguang.wu@intel.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '61b79e1', '2017-03-29', 'Josh Poimboeuf', 'ACPI: Fix incompatibility with mcount-based function graph tracing', 'ACPI: Fix incompatibility with mcount-based function graph tracing

Paul Menzel reported a warning:

  WARNING: CPU: 0 PID: 774 at /build/linux-ROBWaj/linux-4.9.13/kernel/trace/trace_functions_graph.c:233 ftrace_return_to_handler+0x1aa/0x1e0
  Bad frame pointer: expected f6919d98, received f6919db0
    from func acpi_pm_device_sleep_wake return to c43b6f9d

The warning means that function graph tracing is broken for the
acpi_pm_device_sleep_wake() function.  That\'s because the ACPI Makefile
unconditionally sets the \'-Os\' gcc flag to optimize for size.  That\'s an
issue because mcount-based function graph tracing is incompatible with
\'-Os\' on x86, thanks to the following gcc bug:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=42109

I have another patch pending which will ensure that mcount-based
function graph tracing is never used with CONFIG_CC_OPTIMIZE_FOR_SIZE on
x86.

But this patch is needed in addition to that one because the ACPI
Makefile overrides that config option for no apparent reason.  It has
had this flag since the beginning of git history, and there\'s no related
comment, so I don\'t know why it\'s there.  As far as I can tell, there\'s
no reason for it to be there.  The appropriate behavior is for it to
honor CONFIG_CC_OPTIMIZE_FOR_{SIZE,PERFORMANCE} like the rest of the
kernel.

Reported-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Cc: All applicable <stable@vger.kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '474c901', '2017-03-03', 'Linus Torvalds', 'give up on gcc ilog2() constant optimizations', 'give up on gcc ilog2() constant optimizations

gcc-7 has an "optimization" pass that completely screws up, and
generates the code expansion for the (impossible) case of calling
ilog2() with a zero constant, even when the code gcc compiles does not
actually have a zero constant.

And we try to generate a compile-time error for anybody doing ilog2() on
a constant where that doesn\'t make sense (be it zero or negative).  So
now gcc7 will fail the build due to our sanity checking, because it
created that constant-zero case that didn\'t actually exist in the source
code.

There\'s a whole long discussion on the kernel mailing about how to work
around this gcc bug.  The gcc people themselevs have discussed their
"feature" in

   https://gcc.gnu.org/bugzilla/show_bug.cgi?id=72785

but it\'s all water under the bridge, because while it looked at one
point like it would be solved by the time gcc7 was released, that was
not to be.

So now we have to deal with this compiler braindamage.

And the only simple approach seems to be to just delete the code that
tries to warn about bad uses of ilog2().

So now "ilog2()" will just return 0 not just for the value 1, but for
any non-positive value too.

It\'s not like I can recall anybody having ever actually tried to use
this function on any invalid value, but maybe the sanity check just
meant that such code never made it out in public.

Reported-by: Laura Abbott <labbott@redhat.com>
Cc: John Stultz <john.stultz@linaro.org>,
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7d6e910', '2017-02-11', 'Arnd Bergmann', 'crypto: improve gcc optimization flags for serpent and wp512', 'crypto: improve gcc optimization flags for serpent and wp512

An ancient gcc bug (first reported in 2003) has apparently resurfaced
on MIPS, where kernelci.org reports an overly large stack frame in the
whirlpool hash algorithm:

crypto/wp512.c:987:1: warning: the frame size of 1112 bytes is larger than 1024 bytes [-Wframe-larger-than=]

With some testing in different configurations, I\'m seeing large
variations in stack frames size up to 1500 bytes for what should have
around 300 bytes at most. I also checked the reference implementation,
which is essentially the same code but also comes with some test and
benchmarking infrastructure.

It seems that recent compiler versions on at least arm, arm64 and powerpc
have a partial fix for this problem, but enabling "-fsched-pressure", but
even with that fix they suffer from the issue to a certain degree. Some
testing on arm64 shows that the time needed to hash a given amount of
data is roughly proportional to the stack frame size here, which makes
sense given that the wp512 implementation is doing lots of loads for
table lookups, and the problem with the overly large stack is a result
of doing a lot more loads and stores for spilled registers (as seen from
inspecting the object code).

Disabling -fschedule-insns consistently fixes the problem for wp512,
in my collection of cross-compilers, the results are consistently better
or identical when comparing the stack sizes in this function, though
some architectures (notable x86) have schedule-insns disabled by
default.

The four columns are:
default: -O2
press:	 -O2 -fsched-pressure
nopress: -O2 -fschedule-insns -fno-sched-pressure
nosched: -O2 -no-schedule-insns (disables sched-pressure)

				default	press	nopress	nosched
alpha-linux-gcc-4.9.3		1136	848	1136	176
am33_2.0-linux-gcc-4.9.3	2100	2076	2100	2104
arm-linux-gnueabi-gcc-4.9.3	848	848	1048	352
cris-linux-gcc-4.9.3		272	272	272	272
frv-linux-gcc-4.9.3		1128	1000	1128	280
hppa64-linux-gcc-4.9.3		1128	336	1128	184
hppa-linux-gcc-4.9.3		644	308	644	276
i386-linux-gcc-4.9.3		352	352	352	352
m32r-linux-gcc-4.9.3		720	656	720	268
microblaze-linux-gcc-4.9.3	1108	604	1108	256
mips64-linux-gcc-4.9.3		1328	592	1328	208
mips-linux-gcc-4.9.3		1096	624	1096	240
powerpc64-linux-gcc-4.9.3	1088	432	1088	160
powerpc-linux-gcc-4.9.3		1080	584	1080	224
s390-linux-gcc-4.9.3		456	456	624	360
sh3-linux-gcc-4.9.3		292	292	292	292
sparc64-linux-gcc-4.9.3		992	240	992	208
sparc-linux-gcc-4.9.3		680	592	680	312
x86_64-linux-gcc-4.9.3		224	240	272	224
xtensa-linux-gcc-4.9.3		1152	704	1152	304

aarch64-linux-gcc-7.0.0		224	224	1104	208
arm-linux-gnueabi-gcc-7.0.1	824	824	1048	352
mips-linux-gcc-7.0.0		1120	648	1120	272
x86_64-linux-gcc-7.0.1		240	240	304	240

arm-linux-gnueabi-gcc-4.4.7	840			392
arm-linux-gnueabi-gcc-4.5.4	784	728	784	320
arm-linux-gnueabi-gcc-4.6.4	736	728	736	304
arm-linux-gnueabi-gcc-4.7.4	944	784	944	352
arm-linux-gnueabi-gcc-4.8.5	464	464	760	352
arm-linux-gnueabi-gcc-4.9.3	848	848	1048	352
arm-linux-gnueabi-gcc-5.3.1	824	824	1064	336
arm-linux-gnueabi-gcc-6.1.1	808	808	1056	344
arm-linux-gnueabi-gcc-7.0.1	824	824	1048	352

Trying the same test for serpent-generic, the picture is a bit different,
and while -fno-schedule-insns is generally better here than the default,
-fsched-pressure wins overall, so I picked that instead.

				default	press	nopress	nosched
alpha-linux-gcc-4.9.3		1392	864	1392	960
am33_2.0-linux-gcc-4.9.3	536	524	536	528
arm-linux-gnueabi-gcc-4.9.3	552	552	776	536
cris-linux-gcc-4.9.3		528	528	528	528
frv-linux-gcc-4.9.3		536	400	536	504
hppa64-linux-gcc-4.9.3		524	208	524	480
hppa-linux-gcc-4.9.3		768	472	768	508
i386-linux-gcc-4.9.3		564	564	564	564
m32r-linux-gcc-4.9.3		712	576	712	532
microblaze-linux-gcc-4.9.3	724	392	724	512
mips64-linux-gcc-4.9.3		720	384	720	496
mips-linux-gcc-4.9.3		728	384	728	496
powerpc64-linux-gcc-4.9.3	704	304	704	480
powerpc-linux-gcc-4.9.3		704	296	704	480
s390-linux-gcc-4.9.3		560	560	592	536
sh3-linux-gcc-4.9.3		540	540	540	540
sparc64-linux-gcc-4.9.3		544	352	544	496
sparc-linux-gcc-4.9.3		544	344	544	496
x86_64-linux-gcc-4.9.3		528	536	576	528
xtensa-linux-gcc-4.9.3		752	544	752	544

aarch64-linux-gcc-7.0.0		432	432	656	480
arm-linux-gnueabi-gcc-7.0.1	616	616	808	536
mips-linux-gcc-7.0.0		720	464	720	488
x86_64-linux-gcc-7.0.1		536	528	600	536

arm-linux-gnueabi-gcc-4.4.7	592			440
arm-linux-gnueabi-gcc-4.5.4	776	448	776	544
arm-linux-gnueabi-gcc-4.6.4	776	448	776	544
arm-linux-gnueabi-gcc-4.7.4	768	448	768	544
arm-linux-gnueabi-gcc-4.8.5	488	488	776	544
arm-linux-gnueabi-gcc-4.9.3	552	552	776	536
arm-linux-gnueabi-gcc-5.3.1	552	552	776	536
arm-linux-gnueabi-gcc-6.1.1	560	560	776	536
arm-linux-gnueabi-gcc-7.0.1	616	616	808	536

I did not do any runtime tests with serpent, so it is possible that stack
frame size does not directly correlate with runtime performance here and
it actually makes things worse, but it\'s more likely to help here, and
the reduced stack frame size is probably enough reason to apply the patch,
especially given that the crypto code is often used in deep call chains.

Link: https://kernelci.org/build/id/58797d7559b5149efdf6c3a9/logs/
Link: http://www.larc.usp.br/~pbarreto/WhirlpoolPage.html
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=11488
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=79149
Cc: Ralf Baechle <ralf@linux-mips.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5020ded', '2016-11-30', 'Arnd Bergmann', 'tty: nozomi: avoid sprintf buffer overflow', 'tty: nozomi: avoid sprintf buffer overflow

Testing with a gcc-7 snapshot produced an internal compiler error
for this file:

drivers/tty/nozomi.c: In function \'receive_flow_control\':
drivers/tty/nozomi.c:919:12: internal compiler error: in get_substring_ranges_for_loc, at input.c:1388
 static int receive_flow_control(struct nozomi *dc)

I\'ve reported this at https://gcc.gnu.org/bugzilla/show_bug.cgi?id=78569
but also noticed that the code line contains a stack overflow, as it prints
a string into a slightly shorter fixed-length \'tmp\' variable.

A lot of the code here is unnecessary and can be expressed in a simpler
way, relying on the fact that removing the \'DEBUG\' macro will also get
rid of all pr_debug() calls. This change should not change any of the
output but avoids both the stack overflow and the gcc crash.

The stack overflow will not happen unless a module load parameter is
also set to enable the debug messages.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd64e85d', '2016-05-20', 'Rasmus Villemoes', 'compiler.h: add support for malloc attribute', 'compiler.h: add support for malloc attribute

gcc as far back as at least 3.04 documents the function attribute
__malloc__.  Add a shorthand for attaching that to a function
declaration.  This was also suggested by Andi Kleen way back in 2002
[1], but didn\'t get applied, perhaps because gcc at that time generated
the exact same code with and without this attribute.

This attribute tells the compiler that the return value (if non-NULL)
can be assumed not to alias any other valid pointers at the time of the
call.

Please note that the documentation for a range of gcc versions (starting
from around 4.7) contained a somewhat confusing and self-contradicting
text:

  The malloc attribute is used to tell the compiler that a function may
  be treated as if any non-NULL pointer it returns cannot alias any other
  pointer valid when the function returns and *that the memory has
  undefined content*.  [...] Standard functions with this property include
  malloc and *calloc*.

(emphasis mine). The intended meaning has later been clarified [2]:

  This tells the compiler that a function is malloc-like, i.e., that the
  pointer P returned by the function cannot alias any other pointer valid
  when the function returns, and moreover no pointers to valid objects
  occur in any storage addressed by P.

What this means is that we can apply the attribute to kmalloc and
friends, and it is ok for the returned memory to have well-defined
contents (__GFP_ZERO).  But it is not ok to apply it to kmemdup(), nor
to other functions which both allocate and possibly initialize the
memory with existing pointers.  So unless someone is doing something
pretty perverted kstrdup() should also be a fine candidate.

[1] http://thread.gmane.org/gmane.linux.kernel/57172
[2] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56955

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Andi Kleen <ak@linux.intel.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c87bf43', '2016-05-10', 'Arnd Bergmann', 'gcov: disable tree-loop-im to reduce stack usage', 'gcov: disable tree-loop-im to reduce stack usage

Enabling CONFIG_GCOV_PROFILE_ALL produces us a lot of warnings like

lib/lz4/lz4hc_compress.c: In function \'lz4_compresshcctx\':
lib/lz4/lz4hc_compress.c:514:1: warning: the frame size of 1504 bytes is larger than 1024 bytes [-Wframe-larger-than=]

After some investigation, I found that this behavior started with gcc-4.9,
and opened https://gcc.gnu.org/bugzilla/show_bug.cgi?id=69702.
A suggested workaround for it is to use the -fno-tree-loop-im
flag that turns off one of the optimization stages in gcc, so the
code runs a little slower but does not use excessive amounts
of stack.

We could make this conditional on the gcc version, but I could not
find an easy way to do this in Kbuild and the benefit would be
fairly small, given that most of the gcc version in production are
affected now.

I\'m marking this for \'stable\' backports because it addresses a bug
with code generation in gcc that exists in all kernel versions
with the affected gcc releases.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Peter Oberparleiter <oberpar@linux.vnet.ibm.com>
Cc: stable@vger.kernel.org
Signed-off-by: Michal Marek <mmarek@suse.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '8634de6', '2016-05-10', 'Josh Poimboeuf', 'compiler-gcc: require gcc 4.8 for powerpc __builtin_bswap16()', 'compiler-gcc: require gcc 4.8 for powerpc __builtin_bswap16()

gcc support for __builtin_bswap16() was supposedly added for powerpc in
gcc 4.6, and was then later added for other architectures in gcc 4.8.

However, Stephen Rothwell reported that attempting to use it on powerpc
in gcc 4.6 fails with:

  lib/vsprintf.c:160:2: error: initializer element is not constant
  lib/vsprintf.c:160:2: error: (near initialization for \'decpair[0]\')
  lib/vsprintf.c:160:2: error: initializer element is not constant
  lib/vsprintf.c:160:2: error: (near initialization for \'decpair[1]\')
  ...

I\'m not entirely sure what those errors mean, but I don\'t see them on
gcc 4.8.  So let\'s consider gcc 4.8 to be the official starting point
for __builtin_bswap16().

Arnd Bergmann adds:
 "I found the commit in gcc-4.8 that replaced the powerpc-specific
  implementation of __builtin_bswap16 with an architecture-independent
  one.  Apparently the powerpc version (gcc-4.6 and 4.7) just mapped to
  the lhbrx/sthbrx instructions, so it ended up not being a constant,
  though the intent of the patch was mainly to add support for the
  builtin to x86:

    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=52624

  has the patch that went into gcc-4.8 and more information."

Fixes: 7322dd755e7d ("byteswap: try to avoid __builtin_constant_p gcc bug")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7322dd7', '2016-05-06', 'Arnd Bergmann', 'byteswap: try to avoid __builtin_constant_p gcc bug', 'byteswap: try to avoid __builtin_constant_p gcc bug

This is another attempt to avoid a regression in wwn_to_u64() after that
started using get_unaligned_be64(), which in turn ran into a bug on
gcc-4.9 through 6.1.

The regression got introduced due to the combination of two separate
workarounds (commits e3bde9568d99: "include/linux/unaligned: force
inlining of byteswap operations" and ef3fb2422ffe: "scsi: fc: use
get/put_unaligned64 for wwn access") that each try to sidestep distinct
problems with gcc behavior (code growth and increased stack usage).

Unfortunately after both have been applied, a more serious gcc bug has
been uncovered, leading to incorrect object code that discards part of a
function and causes undefined behavior.

As part of this problem is how __builtin_constant_p gets evaluated on an
argument passed by reference into an inline function, this avoids the
use of __builtin_constant_p() for all architectures that set
CONFIG_ARCH_USE_BUILTIN_BSWAP.  Most architectures do not set
ARCH_SUPPORTS_OPTIMIZED_INLINING, which means they probably do not
suffer from the problem in the qla2xxx driver, but they might still run
into it elsewhere.

Both of the original workarounds were only merged in the 4.6 kernel, and
the bug that is fixed by this patch should only appear if both are
there, so we probably don\'t need to backport the fix.  On the other
hand, it works by simplifying the code path and should not have any
negative effects.

[arnd@arndb.de: fix older gcc warnings]
  (http://lkml.kernel.org/r/12243652.bxSxEgjgfk@wuerfel)
Link: https://lkml.org/lkml/headers/2016/4/12/1103
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70232
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70646
Fixes: e3bde9568d99 ("include/linux/unaligned: force inlining of byteswap operations")
Fixes: ef3fb2422ffe ("scsi: fc: use get/put_unaligned64 for wwn access")
Link: http://lkml.kernel.org/r/1780465.XdtPJpi8Tt@wuerfel
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Josh Poimboeuf <jpoimboe@redhat.com>
Tested-by: Josh Poimboeuf <jpoimboe@redhat.com> # on gcc-5.3
Tested-by: Quinn Tran <quinn.tran@qlogic.com>
Cc: Martin Jambor <mjambor@suse.cz>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Himanshu Madhani <himanshu.madhani@qlogic.com>
Cc: Jan Hubicka <hubicka@ucw.cz>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7e57844', '2016-04-15', 'Josh Poimboeuf', 'objtool: Add workaround for GCC switch jump table bug', 'objtool: Add workaround for GCC switch jump table bug

GCC has a rare quirk, currently only seen in three driver functions in
the kernel, and only with certain obscure non-distro configs, which can
cause objtool to produce "unreachable instruction" false positive
warnings.

As part of an optimization, GCC makes a copy of an existing switch jump
table, modifies it, and then hard-codes the jump (albeit with an
indirect jump) to use a single entry in the table.  The rest of the jump
table and some of its jump targets remain as dead code.

In such a case we can just crudely ignore all unreachable instruction
warnings for the entire object file.  Ideally we would just ignore them
for the function, but that would require redesigning the code quite a
bit.  And honestly that\'s just not worth doing: unreachable instruction
warnings are of questionable value anyway, and this is a very rare
issue.

kbuild reports:

  https://lkml.kernel.org/r/201603231906.LWcVUpxm%25fengguang.wu@intel.com
  https://lkml.kernel.org/r/201603271114.K9i45biy%25fengguang.wu@intel.com
  https://lkml.kernel.org/r/201603291058.zuJ6ben1%25fengguang.wu@intel.com

GCC bug:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70604

Reported-by: kbuild test robot <fengguang.wu@intel.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Link: http://lkml.kernel.org/r/700fa029bbb0feff34f03ffc69d666a3c3b57a61.1460663532.git.jpoimboe@redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f9a7cbb', '2016-04-14', 'Denys Vlasenko', 'net: force inlining of netif_tx_start/stop_queue, sock_hold, __sock_put', 'net: force inlining of netif_tx_start/stop_queue, sock_hold, __sock_put

Sometimes gcc mysteriously doesn\'t inline
very small functions we expect to be inlined. See
    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122
Arguably, gcc should do better, but gcc people aren\'t willing
to invest time into it, asking to use __always_inline instead.

With this .config:
http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os,
the following functions get deinlined many times.

netif_tx_stop_queue: 207 copies, 590 calls:
	55                      push   %rbp
	48 89 e5                mov    %rsp,%rbp
	f0 80 8f e0 01 00 00 01 lock orb $0x1,0x1e0(%rdi)
	5d                      pop    %rbp
	c3                      retq

netif_tx_start_queue: 47 copies, 111 calls
	55                      push   %rbp
	48 89 e5                mov    %rsp,%rbp
	f0 80 a7 e0 01 00 00 fe lock andb $0xfe,0x1e0(%rdi)
	5d                      pop    %rbp
	c3                      retq

sock_hold: 39 copies, 124 calls
	55                      push   %rbp
	48 89 e5                mov    %rsp,%rbp
	f0 ff 87 80 00 00 00    lock incl 0x80(%rdi)
	5d                      pop    %rbp
	c3                      retq

__sock_put: 6 copies, 13 calls
	55                      push   %rbp
	48 89 e5                mov    %rsp,%rbp
	f0 ff 8f 80 00 00 00    lock decl 0x80(%rdi)
	5d                      pop    %rbp
	c3                      retq

This patch fixes this via s/inline/__always_inline/.

Code size decrease after the patch is ~2.5k:

    text      data      bss       dec     hex filename
56719876  56364551 36196352 149280779 8e5d80b vmlinux_before
56717440  56364551 36196352 149278343 8e5ce87 vmlinux

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
CC: David S. Miller <davem@davemloft.net>
CC: linux-kernel@vger.kernel.org
CC: netdev@vger.kernel.org
CC: netfilter-devel@vger.kernel.org
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '208fae5', '2016-04-08', 'Nicolas Pitre', 'ARM: 8550/1: protect idiv patching against undefined gcc behavior', 'ARM: 8550/1: protect idiv patching against undefined gcc behavior

It was reported that a kernel with CONFIG_ARM_PATCH_IDIV=y stopped
booting when compiled with the upcoming gcc 6.  Turns out that turning
a function address into a writable array is undefined and gcc 6 decided
it was OK to omit the store to the first word of the function while
still preserving the store to the second word.

Even though gcc 6 is now fixed to behave more coherently, it is a
mystery that gcc 4 and gcc 5 actually produce wanted code in the kernel.
And in fact the reduced test case to illustrate the issue does indeed
break with gcc < 6 as well.

In any case, let\'s guard the kernel against undefined compiler behavior
by hiding the nature of the array location as suggested by gcc
developers.

Reference: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70128

Signed-off-by: Nicolas Pitre <nico@linaro.org>
Reported-by: Marcin Juszkiewicz <mjuszkiewicz@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: stable@vger.kernel.org # v4.5
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ef3fb24', '2016-03-19', 'Arnd Bergmann', 'scsi: fc: use get/put_unaligned64 for wwn access', 'scsi: fc: use get/put_unaligned64 for wwn access

A bug in the gcc-6.0 prerelease version caused at least one
driver (lpfc) to have excessive stack usage when dealing with
wwn data, on the ARM architecture.

lpfc_scsi.c: In function \'lpfc_find_next_oas_lun\':
lpfc_scsi.c:117:1: warning: the frame size of 1152 bytes is larger than 1024 bytes [-Wframe-larger-than=]

I have reported this as a gcc regression in
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70232

However, using a better implementation of wwn_to_u64() not only
helps with the particular gcc problem but also leads to better
object code for any version or architecture.

The kernel already provides get_unaligned_be64() and
put_unaligned_be64() helper functions that provide an
optimized implementation with the desired semantics.

The lpfc_find_next_oas_lun() function in the example that
grew from 1146 bytes to 5144 bytes when moving from gcc-5.3
to gcc-6.0 is now 804 bytes, as the optimized
get_unaligned_be64() load can be done in three instructions.
The stack usage is now down to 28 bytes from 128 bytes with
gcc-5.3 before.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Hannes Reinicke <hare@suse.de>
Reviewed-by: Ewan Milne <emilne@redhat.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e3bde95', '2016-03-18', 'Denys Vlasenko', 'include/linux/unaligned: force inlining of byteswap operations', 'include/linux/unaligned: force inlining of byteswap operations

Sometimes gcc mysteriously doesn\'t inline
very small functions we expect to be inlined. See

    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

With this .config:
http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os,
the following functions get deinlined many times.
Examples of disassembly:

<get_unaligned_be16> (24 copies, 108 calls):
       66 8b 07                mov    (%rdi),%ax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       86 e0                   xchg   %ah,%al
       5d                      pop    %rbp
       c3                      retq

<get_unaligned_be32> (25 copies, 181 calls):
       8b 07                   mov    (%rdi),%eax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       0f c8                   bswap  %eax
       5d                      pop    %rbp
       c3                      retq

<get_unaligned_be64> (23 copies, 94 calls):
       48 8b 07                mov    (%rdi),%rax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       48 0f c8                bswap  %rax
       5d                      pop    %rbp
       c3                      retq

<put_unaligned_be16> (2 copies, 11 calls):
       89 f8                   mov    %edi,%eax
       55                      push   %rbp
       c1 ef 08                shr    $0x8,%edi
       c1 e0 08                shl    $0x8,%eax
       09 c7                   or     %eax,%edi
       48 89 e5                mov    %rsp,%rbp
       66 89 3e                mov    %di,(%rsi)

<put_unaligned_be32> (8 copies, 43 calls):
       55                      push   %rbp
       0f cf                   bswap  %edi
       89 3e                   mov    %edi,(%rsi)
       48 89 e5                mov    %rsp,%rbp
       5d                      pop    %rbp
       c3                      retq

<put_unaligned_be64> (26 copies, 157 calls):
       55                      push   %rbp
       48 0f cf                bswap  %rdi
       48 89 3e                mov    %rdi,(%rsi)
       48 89 e5                mov    %rsp,%rbp
       5d                      pop    %rbp
       c3                      retq

This patch fixes this via s/inline/__always_inline/.

It only affects arches with efficient unaligned access insns, such as x86.
(arched which lack such ops do not include linux/unaligned/access_ok.h)

Code size decrease after the patch is ~8.5k:

    text     data      bss       dec     hex filename
92197848 20826112 36417536 149441496 8e84bd8 vmlinux
92189231 20826144 36417536 149432911 8e82a4f vmlinux6_unaligned_be_after

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Acked-by: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'bc27fb6', '2016-03-18', 'Denys Vlasenko', 'include/uapi/linux/byteorder, swab: force inlining of some byteswap operations', 'include/uapi/linux/byteorder, swab: force inlining of some byteswap operations

Sometimes gcc mysteriously doesn\'t inline
very small functions we expect to be inlined. See

    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

With this .config:
http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os,
the following functions get deinlined many times.
Examples of disassembly:

<get_unaligned_be16> (12 copies, 51 calls):
       66 8b 07                mov    (%rdi),%ax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       86 e0                   xchg   %ah,%al
       5d                      pop    %rbp
       c3                      retq

<get_unaligned_be32> (12 copies, 135 calls):
       8b 07                   mov    (%rdi),%eax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       0f c8                   bswap  %eax
       5d                      pop    %rbp
       c3                      retq

<get_unaligned_be64> (2 copies, 20 calls):
       48 8b 07                mov    (%rdi),%rax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       48 0f c8                bswap  %rax
       5d                      pop    %rbp
       c3                      retq

<__swab16p> (16 copies, 146 calls):
       55                      push   %rbp
       89 f8                   mov    %edi,%eax
       86 e0                   xchg   %ah,%al
       48 89 e5                mov    %rsp,%rbp
       5d                      pop    %rbp
       c3                      retq

<__swab32p> (43 copies, ~560 calls):
       55                      push   %rbp
       89 f8                   mov    %edi,%eax
       0f c8                   bswap  %eax
       48 89 e5                mov    %rsp,%rbp
       5d                      pop    %rbp
       c3                      retq

<__swab64p> (21 copies, 119 calls):
       55                      push   %rbp
       48 89 f8                mov    %rdi,%rax
       48 0f c8                bswap  %rax
       48 89 e5                mov    %rsp,%rbp
       5d                      pop    %rbp
       c3                      retq

<__swab32s> (6 copies, 47 calls):
       8b 07                   mov    (%rdi),%eax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       0f c8                   bswap  %eax
       89 07                   mov    %eax,(%rdi)
       5d                      pop    %rbp
       c3                      retq

This patch fixes this via s/inline/__always_inline/.
Code size decrease after the patch is ~4.5k:

    text     data      bss       dec     hex filename
92202377 20826112 36417536 149446025 8e85d89 vmlinux
92197848 20826112 36417536 149441496 8e84bd8 vmlinux5_swap_after

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Acked-by: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a644fdf', '2016-03-18', 'Denys Vlasenko', 'include/asm-generic/atomic-long.h: force inlining of some atomic_long operations', 'include/asm-generic/atomic-long.h: force inlining of some atomic_long operations

Sometimes gcc mysteriously doesn\'t inline
very small functions we expect to be inlined. See

    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

With this .config:
http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os,
atomic_long_inc(), atomic_long_dec() and atomic_long_add()
functions get deinlined about 40 times. Examples of disassembly:

<atomic_long_inc> (21 copies, 147 calls):
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       f0 48 ff 07             lock incq (%rdi)
       5d                      pop    %rbp
       c3                      retq

<atomic_long_dec> (4 copies, 14 calls) is similar to inc.

<atomic_long_add> (11 copies, 41 calls):
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       f0 48 01 3e             lock add %rdi,(%rsi)
       5d                      pop    %rbp
       c3                      retq

This patch fixes this via s/inline/__always_inline/.
Code size decrease after the patch is ~1.3k:

    text     data      bss       dec     hex filename
92203657 20826112 36417536 149447305 8e86289 vmlinux
92202377 20826112 36417536 149446025 8e85d89 vmlinux4_atomiclong_after

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4b0f326', '2016-03-18', 'Denys Vlasenko', 'include/linux/page-flags.h: force inlining of selected page flag modifications', 'include/linux/page-flags.h: force inlining of selected page flag modifications

Sometimes gcc mysteriously doesn\'t inline
very small functions we expect to be inlined. See

    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

With this .config:
http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os,
the following functions get deinlined many times.
Examples of disassembly:

<SetPageUptodate> (43 copies, 141 calls):
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       f0 80 0f 08             lock orb $0x8,(%rdi)
       5d                      pop    %rbp
       c3                      retq

<PagePrivate> (10 copies, 134 calls):
       48 8b 07                mov    (%rdi),%rax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       48 c1 e8 0b             shr    $0xb,%rax
       83 e0 01                and    $0x1,%eax
       5d                      pop    %rbp
       c3                      retq

This patch fixes this via s/inline/__always_inline/.

Code size decrease after the patch is ~7k:

    text     data      bss       dec     hex filename
92125002 20826048 36417536 149368586 8e72f0a vmlinux
92118087 20826112 36417536 149361735 8e71447 vmlinux7_pageops_after

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: David Rientjes <rientjes@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ee91ef6', '2016-03-18', 'Denys Vlasenko', 'bufferhead: force inlining of buffer head flag operations', 'bufferhead: force inlining of buffer head flag operations

With both gcc 4.7.2 and 4.9.2, sometimes gcc mysteriously doesn\'t inline
very small functions we expect to be inlined.  See

    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

With this .config:
http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os,
set_buffer_foo(), clear_buffer_foo() and similar functions get deinlined
about 60 times. Examples of disassembly:

<set_buffer_mapped> (14 copies, 43 calls):
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       f0 80 0f 20             lock orb $0x20,(%rdi)
       5d                      pop    %rbp
       c3                      retq
<buffer_mapped> (3 copies, 34 calls):
       48 8b 07                mov    (%rdi),%rax
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       48 c1 e8 05             shr    $0x5,%rax
       83 e0 01                and    $0x1,%eax
       5d                      pop    %rbp
       c3                      retq
<set_buffer_new> (5 copies, 13 calls):
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       f0 80 0f 40             lock orb $0x40,(%rdi)
       5d                      pop    %rbp
       c3                      retq

This patch fixes this via s/inline/__always_inline/.
This decreases vmlinux by about 3 kbytes.

    text	    data	     bss	      dec	    hex	filename
88200439	19905208	36421632	144527279	89d4faf	vmlinux2
88197239	19905240	36421632	144524111	89d434f	vmlinux

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: David Rientjes <rientjes@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '8dd5032', '2016-02-09', 'Denys Vlasenko', 'x86/asm/bitops: Force inlining of test_and_set_bit and friends', 'x86/asm/bitops: Force inlining of test_and_set_bit and friends

Sometimes GCC mysteriously doesn\'t inline very small functions
we expect to be inlined, see:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

Arguably, GCC should do better, but GCC people aren\'t willing
to invest time into it and are asking to use __always_inline
instead.

With this .config:

  http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os

here\'s an example of functions getting deinlined many times:

  test_and_set_bit (166 copies, ~1260 calls)
         55                      push   %rbp
         48 89 e5                mov    %rsp,%rbp
         f0 48 0f ab 3e          lock bts %rdi,(%rsi)
         72 04                   jb     <test_and_set_bit+0xf>
         31 c0                   xor    %eax,%eax
         eb 05                   jmp    <test_and_set_bit+0x14>
         b8 01 00 00 00          mov    $0x1,%eax
         5d                      pop    %rbp
         c3                      retq

  test_and_clear_bit (124 copies, ~1000 calls)
         55                      push   %rbp
         48 89 e5                mov    %rsp,%rbp
         f0 48 0f b3 3e          lock btr %rdi,(%rsi)
         72 04                   jb     <test_and_clear_bit+0xf>
         31 c0                   xor    %eax,%eax
         eb 05                   jmp    <test_and_clear_bit+0x14>
         b8 01 00 00 00          mov    $0x1,%eax
         5d                      pop    %rbp
         c3                      retq

  change_bit (3 copies, 8 calls)
         55                      push   %rbp
         48 89 e5                mov    %rsp,%rbp
         f0 48 0f bb 3e          lock btc %rdi,(%rsi)
         5d                      pop    %rbp
         c3                      retq

  clear_bit_unlock (2 copies, 11 calls)
         55                      push   %rbp
         48 89 e5                mov    %rsp,%rbp
         f0 48 0f b3 3e          lock btr %rdi,(%rsi)
         5d                      pop    %rbp
         c3                      retq

This patch works it around via s/inline/__always_inline/.

Code size decrease by ~13.5k after the patch:

      text     data      bss       dec    filename
  92110727 20826144 36417536 149354407    vmlinux.before
  92097234 20826176 36417536 149340946    vmlinux.after

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@amacapital.net>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Brian Gerst <brgerst@gmail.com>
Cc: David Rientjes <rientjes@google.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Thomas Graf <tgraf@suug.ch>
Link: http://lkml.kernel.org/r/1454881887-1367-1-git-send-email-dvlasenk@redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '8488335', '2015-12-11', 'Arnaldo Carvalho de Melo', 'Revert "perf tools: Improve setting of gcc debug option"', 'Revert "perf tools: Improve setting of gcc debug option"

This reverts commit e8b7ea4356fdd3c4de5478f3418eb84f8dce2b61.

Martin created a gcc PR:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=68836

Reported-by: Jiri Olsa <jolsa@redhat.com>
Acked-by: Ingo Molnar <mingo@kernel.org>
Cc: David Ahern <dsahern@gmail.com>
Cc: Martin Liska <mliska@suse.cz>
Cc: Namhyung Kim <namhyung@kernel.org>,
Cc: Peter Zijlstra <peterz@infradead.org>
Link: http://lkml.kernel.org/r/20151202164827.GA21124@krava.brq.redhat.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd7e35df', '2015-12-10', 'Sasha Levin', 'bitops.h: correctly handle rol32 with 0 byte shift', 'bitops.h: correctly handle rol32 with 0 byte shift

ROL on a 32 bit integer with a shift of 32 or more is undefined and the
result is arch-dependent. Avoid this by handling the trivial case of
roling by 0 correctly.

The trivial solution of checking if shift is 0 breaks gcc\'s detection
of this code as a ROL instruction, which is unacceptable.

This bug was reported and fixed in GCC
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=57157):

	The standard rotate idiom,

	  (x << n) | (x >> (32 - n))

	is recognized by gcc (for concreteness, I discuss only the case that x
	is an uint32_t here).

	However, this is portable C only for n in the range 0 < n < 32. For n
	== 0, we get x >> 32 which gives undefined behaviour according to the
	C standard (6.5.7, Bitwise shift operators). To portably support n ==
	0, one has to write the rotate as something like

	  (x << n) | (x >> ((-n) & 31))

	And this is apparently not recognized by gcc.

Note that this is broken on older GCCs and will result in slower ROL.

Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sasha.levin@oracle.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd976441', '2015-10-20', 'Andrey Ryabinin', 'compiler, atomics, kasan: Provide READ_ONCE_NOCHECK()', 'compiler, atomics, kasan: Provide READ_ONCE_NOCHECK()

Some code may perform racy by design memory reads. This could be
harmless, yet such code may produce KASAN warnings.

To hide such accesses from KASAN this patch introduces
READ_ONCE_NOCHECK() macro. KASAN will not check the memory
accessed by READ_ONCE_NOCHECK(). The KernelThreadSanitizer
(KTSAN) is going to ignore it as well.

This patch creates __read_once_size_nocheck() a clone of
__read_once_size(). The only difference between them is
\'no_sanitized_address\' attribute appended to \'*_nocheck\'
function. This attribute tells the compiler that instrumentation
of memory accesses should not be applied to that function. We
declare it as static \'__maybe_unsed\' because GCC is not capable
to inline such function:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368

With KASAN=n READ_ONCE_NOCHECK() is just a clone of READ_ONCE().

Signed-off-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Andy Lutomirski <luto@amacapital.net>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Kostya Serebryany <kcc@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Sasha Levin <sasha.levin@oracle.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Wolfram Gloger <wmglo@dent.med.uni-muenchen.de>
Cc: kasan-dev <kasan-dev@googlegroups.com>
Link: http://lkml.kernel.org/r/1445243838-17763-2-git-send-email-aryabinin@virtuozzo.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '71a0a72', '2015-10-05', 'Yousong Zhou', 'MIPS: UAPI: Ignore __arch_swab{16,32,64} when using MIPS16', 'MIPS: UAPI: Ignore __arch_swab{16,32,64} when using MIPS16

Some GCC versions (e.g. 4.8.3) can incorrectly inline a function with
MIPS32 instructions into another function with MIPS16 code [1], causing
the assembler to genereate incorrect binary code or fail right away
complaining about unrecognized opcode.

In the case of __arch_swab{16,32}, when inlined by the compiler with
flags `-mips32r2 -mips16 -Os\', the assembler can fail with the following
error.

    {standard input}:79: Error: unrecognized opcode `wsbh $2,$2\'

For performance concerns and to workaround the issue already existing in
older compilers, just ignore these 2 functions when compiling with
mips16 enabled.

 [1] Inlining nomips16 function into mips16 function can result in
     undefined builtins, https://gcc.gnu.org/bugzilla/show_bug.cgi?id=55777

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
Cc: Maciej W. Rozycki <macro@linux-mips.org>
Cc: linux-mips@linux-mips.org
Patchwork: https://patchwork.linux-mips.org/patch/11241/
Signed-off-by: Ralf Baechle <ralf@linux-mips.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1bb3bf6', '2015-10-05', 'Yousong Zhou', 'Revert "MIPS: UAPI: Fix unrecognized opcode WSBH/DSBH/DSHD when using MIPS16."', 'Revert "MIPS: UAPI: Fix unrecognized opcode WSBH/DSBH/DSHD when using MIPS16."

This reverts commit e0d8b2ec532852d4b5aabcec3e7611848c32237d.

For at least GCC 4.8.3, adding nomips16 function attribute still cannot
prevent it from being inlined in mips16 context.  So revert it first in
preparation for a better workaround.

 [1] Inlining nomips16 function into mips16 function can result in
     undefined builtins, https://gcc.gnu.org/bugzilla/show_bug.cgi?id=55777

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
Cc: Maciej W. Rozycki <macro@linux-mips.org>
Cc: linux-mips@linux-mips.org
Patchwork: https://patchwork.linux-mips.org/patch/11240/
Signed-off-by: Ralf Baechle <ralf@linux-mips.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '0b101e6', '2015-09-25', 'Denys Vlasenko', 'x86/asm: Force inlining of cpu_relax()', 'x86/asm: Force inlining of cpu_relax()

On x86, cpu_relax() simply calls rep_nop(), which generates one
instruction, PAUSE (aka REP NOP).

With this config:

  http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os

gcc-4.7.2 does not always inline rep_nop(): it generates several
copies of this:

  <rep_nop> (16 copies, 194 calls):
       55                      push   %rbp
       48 89 e5                mov    %rsp,%rbp
       f3 90                   pause
       5d                      pop    %rbp
       c3                      retq

See: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

This patch fixes this via s/inline/__always_inline/
on rep_nop() and cpu_relax().

( Forcing inlining only on rep_nop() causes GCC to
  deinline cpu_relax(), with almost no change in generated code).

      text     data      bss       dec     hex filename
  88118971 19905208 36421632 144445811 89c1173 vmlinux.before
  88118139 19905208 36421632 144444979 89c0e33 vmlinux

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Andy Lutomirski <luto@amacapital.net>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Brian Gerst <brgerst@gmail.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-kernel@vger.kernel.org
Link: http://lkml.kernel.org/r/1443096149-27291-1-git-send-email-dvlasenk@redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '66e8c57', '2015-09-21', 'Oleg Nesterov', 'rcu: Change _wait_rcu_gp() to work around GCC bug 67055', 'rcu: Change _wait_rcu_gp() to work around GCC bug 67055

Code like this in inline functions confuses some recent versions of gcc:

	const int n = const-expr;
	whatever_t array[n];

For more details, see:

	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67055#c13

This compiler bug results in the following failure after 114b7fd4b (rcu:
Create rcu_sync infrastructure):

	In file included from include/linux/rcupdate.h:429:0,
			  from include/linux/rcu_sync.h:5,
			  from kernel/rcu/sync.c:1:
	include/linux/rcutiny.h: In function \'rcu_barrier_sched\':
	include/linux/rcutiny.h:55:20: internal compiler error: Segmentation fault
	  static inline void rcu_barrier_sched(void)

This commit therefore eliminates the constant local variable in favor of
direct use of the expression.

Reported-and-tested-by: Mark Salter <msalter@redhat.com>
Reported-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Oleg Nesterov <oleg@redhat.com>
Signed-off-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a077224', '2015-09-07', 'Ard Biesheuvel', 'ARM: 8429/1: disable GCC SRA optimization', 'ARM: 8429/1: disable GCC SRA optimization

While working on the 32-bit ARM port of UEFI, I noticed a strange
corruption in the kernel log. The following snprintf() statement
(in drivers/firmware/efi/efi.c:efi_md_typeattr_format())

	snprintf(pos, size, "|%3s|%2s|%2s|%2s|%3s|%2s|%2s|%2s|%2s]",

was producing the following output in the log:

	|    |   |   |   |    |WB|WT|WC|UC]
	|    |   |   |   |    |WB|WT|WC|UC]
	|    |   |   |   |    |WB|WT|WC|UC]
	|RUN|   |   |   |    |WB|WT|WC|UC]*
	|RUN|   |   |   |    |WB|WT|WC|UC]*
	|    |   |   |   |    |WB|WT|WC|UC]
	|RUN|   |   |   |    |WB|WT|WC|UC]*
	|    |   |   |   |    |WB|WT|WC|UC]
	|RUN|   |   |   |    |   |   |   |UC]
	|RUN|   |   |   |    |   |   |   |UC]

As it turns out, this is caused by incorrect code being emitted for
the string() function in lib/vsprintf.c. The following code

	if (!(spec.flags & LEFT)) {
		while (len < spec.field_width--) {
			if (buf < end)
				*buf = \' \';
			++buf;
		}
	}
	for (i = 0; i < len; ++i) {
		if (buf < end)
			*buf = *s;
		++buf; ++s;
	}
	while (len < spec.field_width--) {
		if (buf < end)
			*buf = \' \';
		++buf;
	}

when called with len == 0, triggers an issue in the GCC SRA optimization
pass (Scalar Replacement of Aggregates), which handles promotion of signed
struct members incorrectly. This is a known but as yet unresolved issue.
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=65932). In this particular
case, it is causing the second while loop to be executed erroneously a
single time, causing the additional space characters to be printed.

So disable the optimization by passing -fno-ipa-sra.

Cc: <stable@vger.kernel.org>
Acked-by: Nicolas Pitre <nico@linaro.org>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'accd0b9', '2015-08-05', 'Denys Vlasenko', 'jiffies: Force inlining of {m,u}msecs_to_jiffies()', 'jiffies: Force inlining of {m,u}msecs_to_jiffies()

With this config:

  http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os

gcc-4.7.2 generates many copies of these tiny functions:

	msecs_to_jiffies (45 copies):
	55                      push   %rbp
	48 89 e5                mov    %rsp,%rbp
	e8 59 ec 03 00          callq  __msecs_to_jiffies
	5d                      pop    %rbp
	c3                      retq

	usecs_to_jiffies (10 copies):
	55                      push   %rbp
	48 89 e5                mov    %rsp,%rbp
	e8 5d 54 5e ff          callq  __usecs_to_jiffies
	5d                      pop    %rbp
	c3                      retq

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

This patch fixes this via s/inline/__always_inline/

	    text     data      bss       dec  filename
	86970954 17195912 36659200 140826066  vmlinux.before
	86966150 17195912 36659200 140821262  vmlinux

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: linux-kernel@vger.kernel.org
Link: http://lkml.kernel.org/r/1438697716-28121-3-git-send-email-dvlasenk@redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'd14edb1', '2015-08-05', 'Denys Vlasenko', 'x86/hweight: Force inlining of __arch_hweight{32,64}()', 'x86/hweight: Force inlining of __arch_hweight{32,64}()

With this config:

  http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os

gcc-4.7.2 generates many copies of these tiny functions:

	__arch_hweight32 (35 copies):
	55                      push   %rbp
	e8 66 9b 4a 00          callq  __sw_hweight32
	48 89 e5                mov    %rsp,%rbp
	5d                      pop    %rbp
	c3                      retq

	__arch_hweight64 (8 copies):
	55                      push   %rbp
	e8 5e c2 8a 00          callq  __sw_hweight64
	48 89 e5                mov    %rsp,%rbp
	5d                      pop    %rbp
	c3                      retq

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

This patch fixes this via s/inline/__always_inline/

To avoid touching 32-bit case where such change was not tested
to be a win, reformat __arch_hweight64() to have completely
disjoint 64-bit and 32-bit implementations. IOW: made #ifdef /
32 bits and 64 bits instead of having #ifdef / #else / #endif
inside a single function body. Only 64-bit __arch_hweight64() is
__always_inline\'d.

	    text     data      bss       dec  filename
	86971120 17195912 36659200 140826232  vmlinux.before
	86970954 17195912 36659200 140826066  vmlinux

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: linux-kernel@vger.kernel.org
Link: http://lkml.kernel.org/r/1438697716-28121-2-git-send-email-dvlasenk@redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1a1d48a', '2015-08-05', 'Denys Vlasenko', 'linux/bitmap: Force inlining of bitmap weight functions', 'linux/bitmap: Force inlining of bitmap weight functions

With this config:

  http://busybox.net/~vda/kernel_config_OPTIMIZE_INLINING_and_Os

gcc-4.7.2 generates many copies of these tiny functions:

	bitmap_weight (55 copies):
	55                      push   %rbp
	48 89 e5                mov    %rsp,%rbp
	e8 3f 3a 8b 00          callq  __bitmap_weight
	5d                      pop    %rbp
	c3                      retq

	hweight_long (23 copies):
	55                      push   %rbp
	e8 b5 65 8e 00          callq  __sw_hweight64
	48 89 e5                mov    %rsp,%rbp
	5d                      pop    %rbp
	c3                      retq

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

This patch fixes this via s/inline/__always_inline/

While at it, replaced two "__inline__" with usual "inline"
(the rest of the source file uses the latter).

	    text     data      bss       dec  filename
	86971357 17195880 36659200 140826437  vmlinux.before
	86971120 17195912 36659200 140826232  vmlinux

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: David Rientjes <rientjes@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Thomas Graf <tgraf@suug.ch>
Cc: linux-kernel@vger.kernel.org
Link: http://lkml.kernel.org/r/1438697716-28121-1-git-send-email-dvlasenk@redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'b2c5110', '2015-07-22', 'Andy Lutomirski', 'x86/build: Fix detection of GCC -mpreferred-stack-boundary support', 'x86/build: Fix detection of GCC -mpreferred-stack-boundary support

As per:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=53383

GCC only allows -mpreferred-stack-boundary=3 on x86_64 if -mno-sse is set.
That means that cc-option will not detect -mpreferred-stack-boundary=3
support, because we test for it before setting -mno-sse.

Fix it by reordering the Makefile bits.

Compile-tested only.  This should help avoid code generation
issues such as the one that was worked around in:

  b96fecbfa8c8 ("x86/fpu: Fix boot crash in the early FPU code")

I\'m a bit concerned that we could still have problems on older
GCC versions given that our asm code does not respect GCC\'s idea
of the ABI-required stack alignment.

Signed-off-by: Andy Lutomirski <luto@kernel.org>
Cc: Andy Lutomirski <luto@amacapital.net>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Brian Gerst <brgerst@gmail.com>
Cc: Denys Vlasenko <dvlasenk@redhat.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Jan Kara <jack@suse.cz>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Link: http://lkml.kernel.org/r/f5297c192969adfa0d28b84cf8a22d59573db26d.1436126872.git.luto@kernel.org
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '3490565', '2015-07-21', 'Denys Vlasenko', 'locking/spinlocks: Force inlining of spinlock ops', 'locking/spinlocks: Force inlining of spinlock ops

With both gcc 4.7.2 and 4.9.2, sometimes GCC mysteriously
doesn\'t inline very small functions we expect to be inlined.
See:

    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66122

In particular, with this config:

   http://busybox.net/~vda/kernel_config

there are more than a thousand copies of tiny spinlock-related
functions:

  $ nm --size-sort vmlinux | grep -iF \' t \' | uniq -c | grep -v \'^ *1 \' | sort -rn | grep \' spin\'
    473 000000000000000b t spin_unlock_irqrestore
    292 000000000000000b t spin_unlock
    215 000000000000000b t spin_lock
    134 000000000000000b t spin_unlock_irq
    130 000000000000000b t spin_unlock_bh
    120 000000000000000b t spin_lock_irq
    106 000000000000000b t spin_lock_bh

Disassembly:

 ffffffff81004720 <spin_lock>:
 ffffffff81004720:       55                      push   %rbp
 ffffffff81004721:       48 89 e5                mov    %rsp,%rbp
 ffffffff81004724:       e8 f8 4e e2 02          callq <_raw_spin_lock>
 ffffffff81004729:       5d                      pop    %rbp
 ffffffff8100472a:       c3                      retq

This patch fixes this via s/inline/__always_inline/ in
spinlock.h. This decreases vmlinux by about 40k:

      text     data      bss       dec     hex filename
  82375570 22255544 20627456 125258570 7774b4a vmlinux.before
  82335059 22255416 20627456 125217931 776ac8b vmlinux

Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@amacapital.net>
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Brian Gerst <brgerst@gmail.com>
Cc: David Rientjes <rientjes@google.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Thomas Graf <tgraf@suug.ch>
Link: http://lkml.kernel.org/r/1436812263-15243-1-git-send-email-dvlasenk@redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '92d6cf2', '2015-06-11', 'Anton Blanchard', 'powerpc: Don\'t use -mno-strict-align on clang', 'powerpc: Don\'t use -mno-strict-align on clang

We added -mno-strict-align in commit f036b3681962 (powerpc: Work around little
endian gcc bug) to fix gcc bug http://gcc.gnu.org/bugzilla/show_bug.cgi?id=57134

Clang doesn\'t understand it. We need to use a conditional because we can\'t use the
simpler call cc-option here.

Signed-off-by: Anton Blanchard <anton@samba.org>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4d3199e', '2015-02-24', 'Davidlohr Bueso', 'locking: Remove ACCESS_ONCE() usage', 'locking: Remove ACCESS_ONCE() usage

With the new standardized functions, we can replace all
ACCESS_ONCE() calls across relevant locking - this includes
lockref and seqlock while at it.

ACCESS_ONCE() does not work reliably on non-scalar types.
For example gcc 4.6 and 4.7 might remove the volatile tag
for such accesses during the SRA (scalar replacement of
aggregates) step:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145

Update the new calls regardless of if it is a scalar type,
this is cleaner than having three alternatives.

Signed-off-by: Davidlohr Bueso <dbueso@suse.de>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
Link: http://lkml.kernel.org/r/1424662301.6539.18.camel@stgolabs.net
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f5e38b9', '2015-02-14', 'Daniel Borkmann', 'lib: crc32: constify crc32 lookup table', 'lib: crc32: constify crc32 lookup table

Commit 8f243af42ade ("sections: fix const sections for crc32 table")
removed the compile-time generated crc32 tables from the RO sections,
because it conflicts with the definition of __cacheline_aligned which
puts all such aligned data into .data..cacheline_aligned section
optimized for wasting less space, and can cause alignment issues when
used in combination with const with some gcc versions like 4.7.0 due to
a gcc bug [1].

Given that most gcc versions should have the fix by now, we can just use
____cacheline_aligned, which only aligns the data but doesn\'t move it
into specific sections as opposed to __cacheline_aligned.  In case of
gcc versions having the mentioned bug, the alignment attribute will have
no effect, but the data will still be made RO.

After patch tables are in RO:

  $ nm -v lib/crc32.o | grep -1 -E "crc32c?table"
  0000000000000000 t arch_local_irq_enable
  0000000000000000 r crc32ctable_le
  0000000000000000 t crc32_exit
  --
  0000000000000960 t test_buf
  0000000000002000 r crc32table_be
  0000000000004000 r crc32table_le
  000000001d1056e5 A __crc_crc32_be

  [1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=52181

Signed-off-by: Daniel Borkmann <dborkman@redhat.com>
Cc: Joe Mario <jmario@redhat.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '38c5ce9', '2015-01-19', 'Christian Borntraeger', 'mm/gup: Replace ACCESS_ONCE with READ_ONCE', 'mm/gup: Replace ACCESS_ONCE with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Fixup gup_pmd_range.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1760f1e', '2015-01-19', 'Christian Borntraeger', 'x86/xen/p2m: Replace ACCESS_ONCE with READ_ONCE', 'x86/xen/p2m: Replace ACCESS_ONCE with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Change the p2m code to replace ACCESS_ONCE with READ_ONCE.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Reviewed-by: Juergen Gross <jgross@suse.com>
Acked-by: David Vrabel <david.vrabel@citrix.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'da1a288', '2015-01-19', 'Christian Borntraeger', 'ppc/hugetlbfs: Replace ACCESS_ONCE with READ_ONCE', 'ppc/hugetlbfs: Replace ACCESS_ONCE with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Change the ppc/hugetlbfs code to replace ACCESS_ONCE with READ_ONCE.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5ee0761', '2015-01-19', 'Christian Borntraeger', 'ppc/kvm: Replace ACCESS_ONCE with READ_ONCE', 'ppc/kvm: Replace ACCESS_ONCE with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Change the ppc/kvm code to replace ACCESS_ONCE with READ_ONCE.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Acked-by: Alexander Graf <agraf@suse.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '5de72a2', '2014-12-18', 'Christian Borntraeger', 's390/kvm: REPLACE barrier fixup with READ_ONCE', 's390/kvm: REPLACE barrier fixup with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Commit 1365039d0cb3 ("KVM: s390: Fix ipte locking") replace
ACCESS_ONCE with barriers. Lets use READ_ONCE instead.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Acked-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '488beef', '2014-12-18', 'Christian Borntraeger', 'arm/spinlock: Replace ACCESS_ONCE with READ_ONCE', 'arm/spinlock: Replace ACCESS_ONCE with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Change the spinlock code to replace ACCESS_ONCE with READ_ONCE.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Acked-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'af2e7aa', '2014-12-18', 'Christian Borntraeger', 'arm64/spinlock: Replace ACCESS_ONCE READ_ONCE', 'arm64/spinlock: Replace ACCESS_ONCE READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Change the spinlock code to replace ACCESS_ONCE with READ_ONCE.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Acked-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4218091', '2014-12-18', 'Christian Borntraeger', 'mips/gup: Replace ACCESS_ONCE with READ_ONCE', 'mips/gup: Replace ACCESS_ONCE with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Change the gup code to replace ACCESS_ONCE with READ_ONCE.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Acked-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '14cf3d9', '2014-12-18', 'Christian Borntraeger', 'x86/gup: Replace ACCESS_ONCE with READ_ONCE', 'x86/gup: Replace ACCESS_ONCE with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Change the gup code to replace ACCESS_ONCE with READ_ONCE.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Acked-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4f9d138', '2014-12-18', 'Christian Borntraeger', 'x86/spinlock: Replace ACCESS_ONCE with READ_ONCE', 'x86/spinlock: Replace ACCESS_ONCE with READ_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Change the spinlock code to replace ACCESS_ONCE with READ_ONCE.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Acked-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e37c698', '2014-12-18', 'Christian Borntraeger', 'mm: replace ACCESS_ONCE with READ_ONCE or barriers', 'mm: replace ACCESS_ONCE with READ_ONCE or barriers

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
(https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Let\'s change the code to access the page table elements with
READ_ONCE that does implicit scalar accesses for the gup code.

mm_find_pmd is tricky, because m68k and sparc(32bit) define pmd_t
as array of longs. This code requires just that the pmd_present
and pmd_trans_huge check are done on the same value, so a barrier
is sufficent.

A similar case is in handle_pte_fault. On ppc44x the word size is
32 bit, but a pte is 64 bit. A barrier is ok as well.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: linux-mm@kvack.org
Acked-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '230fa25', '2014-12-18', 'Christian Borntraeger', 'kernel: Provide READ_ONCE and ASSIGN_ONCE', 'kernel: Provide READ_ONCE and ASSIGN_ONCE

ACCESS_ONCE does not work reliably on non-scalar types. For
example gcc 4.6 and 4.7 might remove the volatile tag for such
accesses during the SRA (scalar replacement of aggregates) step
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145)

Let\'s provide READ_ONCE/ASSIGN_ONCE that will do all accesses via
scalar types as suggested by Linus Torvalds. Accesses larger than
the machines word size cannot be guaranteed to be atomic. These
macros will use memcpy and emit a build warning.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1365039', '2014-11-07', 'Christian Borntraeger', 'KVM: s390: Fix ipte locking', 'KVM: s390: Fix ipte locking

ipte_unlock_siif uses cmpxchg to replace the in-memory data of the ipte
lock together with ACCESS_ONCE for the intial read.

union ipte_control {
        unsigned long val;
        struct {
                unsigned long k  : 1;
                unsigned long kh : 31;
                unsigned long kg : 32;
        };
};
[...]
static void ipte_unlock_siif(struct kvm_vcpu *vcpu)
{
        union ipte_control old, new, *ic;

        ic = &vcpu->kvm->arch.sca->ipte_control;
        do {
                new = old = ACCESS_ONCE(*ic);
                new.kh--;
                if (!new.kh)
                        new.k = 0;
        } while (cmpxchg(&ic->val, old.val, new.val) != old.val);
        if (!new.kh)
                wake_up(&vcpu->kvm->arch.ipte_wq);
}

The new value, is loaded twice from memory with gcc 4.7.2 of
fedora 18, despite the ACCESS_ONCE:

--->

l       %r4,0(%r3)      <--- load first 32 bit of lock (k and kh) in r4
alfi    %r4,2147483647  <--- add -1 to r4
llgtr   %r4,%r4         <--- zero out the sign bit of r4
lg      %r1,0(%r3)      <--- load all 64 bit of lock into new
lgr     %r2,%r1         <--- load the same into old
risbg   %r1,%r4,1,31,32 <--- shift and insert r4 into the bits 1-31 of
new
llihf   %r4,2147483647
ngrk    %r4,%r1,%r4
jne     aa0 <ipte_unlock+0xf8>
nihh    %r1,32767
lgr     %r4,%r2
csg     %r4,%r1,0(%r3)
cgr     %r2,%r4
jne     a70 <ipte_unlock+0xc8>

If the memory value changes between the first load (l) and the second
load (lg) we are broken. If that happens VCPU threads will hang
(unkillable) in handle_ipte_interlock.

Andreas Krebbel analyzed this and tracked it down to a compiler bug in
that version:
"while it is not that obvious the C99 standard basically forbids
duplicating the memory access also in that case. For an argumentation of
a similiar case please see:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=22278#c43

For the implementation-defined cases regarding volatile there are some
GCC-specific clarifications which can be found here:
https://gcc.gnu.org/onlinedocs/gcc/Volatiles.html#Volatiles

I\'ve tracked down the problem with a reduced testcase. The problem was
that during a tree level optimization (SRA - scalar replacement of
aggregates) the volatile marker is lost. And an RTL level optimizer (CSE
- common subexpression elimination) then propagated the memory read into
  its second use introducing another access to the memory location. So
indeed Christian\'s suspicion that the union access has something to do
with it is correct (since it triggered the SRA optimization).

This issue has been reported and fixed in the GCC 4.8 development cycle:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145"

This patch replaces the ACCESS_ONCE scheme with a barrier() based scheme
that should work for all supported compilers.

Signed-off-by: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: stable@vger.kernel.org # v3.16+
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a060dc5', '2014-09-16', 'James Hogan', 'vfs: workaround gcc <4.6 build error in link_path_walk()', 'vfs: workaround gcc <4.6 build error in link_path_walk()

Commit d6bb3e9075bb ("vfs: simplify and shrink stack frame of
link_path_walk()") introduced build problems with GCC versions older
than 4.6 due to the initialisation of a member of an anonymous union in
struct qstr without enclosing braces.

This hits GCC bug 10676 [1] (which was fixed in GCC 4.6 by [2]), and
causes the following build error:

  fs/namei.c: In function \'link_path_walk\':
  fs/namei.c:1778: error: unknown field \'hash_len\' specified in initializer

This is worked around by adding explicit braces.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=10676
[2] https://gcc.gnu.org/viewcvs/gcc?view=revision&revision=159206

Fixes: d6bb3e9075bb (vfs: simplify and shrink stack frame of link_path_walk())
Signed-off-by: James Hogan <james.hogan@imgtec.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Alexander Viro <viro@zeniv.linux.org.uk>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-fsdevel@vger.kernel.org
Cc: linux-metag@vger.kernel.org
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2062afb', '2014-07-27', 'Linus Torvalds', 'Fix gcc-4.9.0 miscompilation of load_balance()  in scheduler', 'Fix gcc-4.9.0 miscompilation of load_balance()  in scheduler

Michel Dänzer and a couple of other people reported inexplicable random
oopses in the scheduler, and the cause turns out to be gcc mis-compiling
the load_balance() function when debugging is enabled.  The gcc bug
apparently goes back to gcc-4.5, but slight optimization changes means
that it now showed up as a problem in 4.9.0 and 4.9.1.

The instruction scheduling problem causes gcc to schedule a spill
operation to before the stack frame has been created, which in turn can
corrupt the spilled value if an interrupt comes in.  There may be other
effects of this bug too, but that\'s the code generation problem seen in
Michel\'s case.

This is fixed in current gcc HEAD, but the workaround as suggested by
Markus Trippelsdorf is pretty simple: use -fno-var-tracking-assignments
when compiling the kernel, which disables the gcc code that causes the
problem.  This can result in slightly worse debug information for
variable accesses, but that is infinitely preferable to actual code
generation problems.

Doing this unconditionally (not just for CONFIG_DEBUG_INFO) also allows
non-debug builds to verify that the debug build would be identical: we
can do

    export GCC_COMPARE_DEBUG=1

to make gcc internally verify that the result of the build is
independent of the "-g" flag (it will make the compiler build everything
twice, toggling the debug flag, and compare the results).

Without the "-fno-var-tracking-assignments" option, the build would fail
(even with 4.8.3 that didn\'t show the actual stack frame bug) with a gcc
compare failure.

See also gcc bugzilla:

  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61801

Reported-by: Michel Dänzer <michel@daenzer.net>
Suggested-by: Markus Trippelsdorf <markus@trippelsdorf.de>
Cc: Jakub Jelinek <jakub@redhat.com>
Cc: stable@kernel.org
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'abb43f6', '2014-04-10', 'Mathieu Desnoyers', 'tracing: Fix anonymous unions in struct ftrace_event_call', 'tracing: Fix anonymous unions in struct ftrace_event_call

gcc <= 4.5.x has significant limitations with respect to initialization
of anonymous unions within structures. They need to be surrounded by
brackets, _and_ they need to be initialized in the same order in which
they appear in the structure declaration.

Link: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=10676
Link: http://lkml.kernel.org/r/1397077568-3156-1-git-send-email-mathieu.desnoyers@efficios.com

Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Signed-off-by: Steven Rostedt <rostedt@goodmis.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a9f1803', '2014-02-13', 'Steven Noonan', 'compiler/gcc4: Make quirk for asm_volatile_goto() unconditional', 'compiler/gcc4: Make quirk for asm_volatile_goto() unconditional

I started noticing problems with KVM guest destruction on Linux
3.12+, where guest memory wasn\'t being cleaned up. I bisected it
down to the commit introducing the new \'asm goto\'-based atomics,
and found this quirk was later applied to those.

Unfortunately, even with GCC 4.8.2 (which ostensibly fixed the
known \'asm goto\' bug) I am still getting some kind of
miscompilation. If I enable the asm_volatile_goto quirk for my
compiler, KVM guests are destroyed correctly and the memory is
cleaned up.

So make the quirk unconditional for now, until bug is found
and fixed.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Steven Noonan <steven@uplinklabs.net>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Jakub Jelinek <jakub@redhat.com>
Cc: Richard Henderson <rth@twiddle.net>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Oleg Nesterov <oleg@redhat.com>
Cc: <stable@vger.kernel.org>
Link: http://lkml.kernel.org/r/1392274867-15236-1-git-send-email-steven@uplinklabs.net
Link: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f036b36', '2013-10-11', 'Anton Blanchard', 'powerpc: Work around little endian gcc bug', 'powerpc: Work around little endian gcc bug

Temporarily work around an ICE we are seeing while building
in little endian mode:

http://gcc.gnu.org/bugzilla/show_bug.cgi?id=57134

Signed-off-by: Anton Blanchard <anton@samba.org>
Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '3f0116c', '2013-10-11', 'Ingo Molnar', 'compiler/gcc4: Add quirk for \'asm goto\' miscompilation bug', 'compiler/gcc4: Add quirk for \'asm goto\' miscompilation bug

Fengguang Wu, Oleg Nesterov and Peter Zijlstra tracked down
a kernel crash to a GCC bug: GCC miscompiles certain \'asm goto\'
constructs, as outlined here:

  http://gcc.gnu.org/bugzilla/show_bug.cgi?id=58670

Implement a workaround suggested by Jakub Jelinek.

Reported-and-tested-by: Fengguang Wu <fengguang.wu@intel.com>
Reported-by: Oleg Nesterov <oleg@redhat.com>
Reported-by: Peter Zijlstra <a.p.zijlstra@chello.nl>
Suggested-by: Jakub Jelinek <jakub@redhat.com>
Reviewed-by: Richard Henderson <rth@twiddle.net>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: <stable@kernel.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '6833d83', '2013-08-31', 'Christoffer Dall', 'ARM: KVM: Work around older compiler bug', 'ARM: KVM: Work around older compiler bug

Compilers before 4.6 do not behave well with unnamed fields in structure
initializers and therefore produces build errors:
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=10676

By refering to the unnamed union using braces, both older and newer
compilers produce the same result.

Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Reported-by: Russell King <linux@arm.linux.org.uk>
Tested-by: Russell King <linux@arm.linux.org.uk>
Signed-off-by: Christoffer Dall <christoffer.dall@linaro.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '60bc851', '2013-05-02', 'Eric Dumazet', 'af_unix: fix a fatal race with bit fields', 'af_unix: fix a fatal race with bit fields

Using bit fields is dangerous on ppc64/sparc64, as the compiler [1]
uses 64bit instructions to manipulate them.
If the 64bit word includes any atomic_t or spinlock_t, we can lose
critical concurrent changes.

This is happening in af_unix, where unix_sk(sk)->gc_candidate/
gc_maybe_cycle/lock share the same 64bit word.

This leads to fatal deadlock, as one/several cpus spin forever
on a spinlock that will never be available again.

A safer way would be to use a long to store flags.
This way we are sure compiler/arch wont do bad things.

As we own unix_gc_lock spinlock when clearing or setting bits,
we can use the non atomic __set_bit()/__clear_bit().

recursion_level can share the same 64bit location with the spinlock,
as it is set only with this spinlock held.

[1] bug fixed in gcc-4.8.0 :
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=52080

Reported-by: Ambrose Feinstein <ambrose@google.com>
Signed-off-by: Eric Dumazet <edumazet@google.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '2fb0815', '2013-04-30', 'Guenter Roeck', 'gcc4: disable __compiletime_object_size for GCC 4.6+', 'gcc4: disable __compiletime_object_size for GCC 4.6+

__builtin_object_size is known to be broken on gcc 4.6+.
See http://gcc.gnu.org/bugzilla/show_bug.cgi?id=48880 for details.

This causes unnecssary build warnings and errors such as

  In function \'copy_from_user\', inlined from \'sb16_copy_from_user\'
	at sound/oss/sb_audio.c:878:22:
  arch/x86/include/asm/uaccess_32.h:211:26: error: call to \'copy_from_user_overflow\'
	declared with attribute error: copy_from_user() buffer size is not provably correct
  make[3]: [sound/oss/sb_audio.o] Error 1 (ignored)

Disable it where broken.

Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Cc: David Howells <dhowells@redhat.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7f2de81', '2012-12-19', 'Linus Torvalds', 'Merge tag \'byteswap-for-linus-20121219\' of git://git.infradead.org/users/dwmw2/byteswap', 'Merge tag \'byteswap-for-linus-20121219\' of git://git.infradead.org/users/dwmw2/byteswap

Pull preparatory gcc intrisics bswap patch from David Woodhouse:
 "This single patch is effectively a no-op for now.  It enables
  architectures to opt in to using GCC\'s __builtin_bswapXX() intrinsics
  for byteswapping, and if we merge this now then the architecture
  maintainers can enable it for their arch during the next cycle without
  dependency issues.

  It\'s worth making it a par-arch opt-in, because although in *theory*
  the compiler should never do worse than hand-coded assembler (and of
  course it also ought to do a lot better on platforms like Atom and
  PowerPC which have load-and-swap or store-and-swap instructions), that
  isn\'t always the case.  See

     http://gcc.gnu.org/bugzilla/show_bug.cgi?id=46453

  for example."

* tag \'byteswap-for-linus-20121219\' of git://git.infradead.org/users/dwmw2/byteswap:
  byteorder: allow arch to opt to use GCC intrinsics for byteswapping
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '7629a9f', '2012-10-29', 'Will Deacon', 'ARM: 7567/1: io: avoid GCC\'s offsettable addressing modes for halfword accesses', 'ARM: 7567/1: io: avoid GCC\'s offsettable addressing modes for halfword accesses

Using the \'o\' memory constraint in inline assembly can result in GCC
generating invalid immediate offsets for memory access instructions with
reduced addressing capabilities (i.e. smaller than 12-bit immediate
offsets):

  http://gcc.gnu.org/bugzilla/show_bug.cgi?id=54983

As there is no constraint to specify the exact addressing mode we need,
fallback to using \'Q\' exclusively for halfword I/O accesses. This may
emit an additional add instruction (using an extra register) in order
to construct the address but it will always be accepted by GAS.

Reported-by: Bastian Hecht <hechtb@googlemail.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a9468f3', '2012-03-24', 'Rabin Vincent', 'ARM: 7333/2: jump label: detect %c support for ARM', 'ARM: 7333/2: jump label: detect %c support for ARM

Some versions of ARM GCC which do support asm goto, do not support
the %c specifier.  Since we need the %c to support jump labels
on ARM, detect that too in the asm goto detection script to avoid
build errors with these versions.

http://gcc.gnu.org/bugzilla/show_bug.cgi?id=48637

Acked-by: Jason Baron <jbaron@redhat.com>
Signed-off-by: Rabin Vincent <rabin@rab.in>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'ba12b13', '2011-01-20', 'Jan Engelhardt', 'netfilter: xtables: remove duplicate member', 'netfilter: xtables: remove duplicate member

Accidentally missed removing the old out-of-union "inverse" member,
which caused the struct size to change which then gives size mismatch
warnings when using an old iptables.

It is interesting to see that gcc did not warn about this before.
(Filed http://gcc.gnu.org/bugzilla/show_bug.cgi?id=47376 )

Signed-off-by: Jan Engelhardt <jengelh@medozas.de>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '45f81b1', '2010-10-30', 'Steven Rostedt', 'jump label: Add work around to i386 gcc asm goto bug', 'jump label: Add work around to i386 gcc asm goto bug

On i386 (not x86_64) early implementations of gcc would have a bug
with asm goto causing it to produce code like the following:

(This was noticed by Peter Zijlstra)

   56 pushl 0
   67 nopl         jmp 0x6f
      popl
      jmp 0x8c

   6f              mov
                   test
                   je 0x8c

   8c mov
      call *(%esp)

The jump added in the asm goto skipped over the popl that matched
the pushl 0, which lead up to a quick crash of the system when
the jump was enabled. The nopl is defined in the asm goto () statement
and when tracepoints are enabled, the nop changes to a jump to the label
that was specified by the asm goto. asm goto is suppose to tell gcc that
the code in the asm might jump to an external label. Here gcc obviously
fails to make that work.

The bug report for gcc is here:

  http://gcc.gnu.org/bugzilla/show_bug.cgi?id=46226

The bug only appears on x86 when not compiled with
-maccumulate-outgoing-args. This option is always set on x86_64 and it
is also the work around for a function graph tracer i386 bug.
(See commit: 746357d6a526d6da9d89a2ec645b28406e959c2e)
This explains why the bug only showed up on i386 when function graph
tracer was not enabled.

This patch now adds a CONFIG_JUMP_LABEL option that is default
off instead of using jump labels by default. When jump labels are
enabled, the -maccumulate-outgoing-args will be used (causing a
slightly larger kernel image on i386). This option will exist
until we have a way to detect if the gcc compiler in use is safe
to use on all configurations without the work around.

Note, there exists such a test, but for now we will keep the enabling
of jump label as a manual option.

Archs that know the compiler is safe with asm goto, may choose to
select JUMP_LABEL and enable it by default.

Reported-by: Ingo Molnar <mingo@elte.hu>
Cause-discovered-by: Peter Zijlstra <a.p.zijlstra@chello.nl>
Cc: Peter Zijlstra <a.p.zijlstra@chello.nl>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Jason Baron <jbaron@redhat.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: David Daney <ddaney@caviumnetworks.com>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Cc: David Miller <davem@davemloft.net>
Cc: Richard Henderson <rth@redhat.com>
LKML-Reference: <1288028746.3673.11.camel@laptop>
Signed-off-by: Steven Rostedt <rostedt@goodmis.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f8324e2', '2010-07-21', 'Mikael Pettersson', 'math-emu: correct test for downshifting fraction in _FP_FROM_INT()', 'math-emu: correct test for downshifting fraction in _FP_FROM_INT()

The kernel\'s math-emu code contains a macro _FP_FROM_INT() which is
used to convert an integer to a raw normalized floating-point value.
It does this basically in three steps:

1. Compute the exponent from the number of leading zero bits.
2. Downshift large fractions to put the MSB in the right position
   for normalized fractions.
3. Upshift small fractions to put the MSB in the right position.

There is an boundary error in step 2, causing a fraction with its
MSB exactly one bit above the normalized MSB position to not be
downshifted.  This results in a non-normalized raw float, which when
packed becomes a massively inaccurate representation for that input.

The impact of this depends on a number of arch-specific factors,
but it is known to have broken emulation of FXTOD instructions
on UltraSPARC III, which was originally reported as GCC bug 44631
<http://gcc.gnu.org/bugzilla/show_bug.cgi?id=44631>.

Any arch which uses math-emu to emulate conversions from integers to
same-size floats may be affected.

The fix is simple: the exponent comparison used to determine if the
fraction should be downshifted must be "<=" not "<".

I\'m sending a kernel module to test this as a reply to this message.
There are also SPARC user-space test cases in the GCC bug entry.

Signed-off-by: Mikael Pettersson <mikpe@it.uu.se>
Signed-off-by: David S. Miller <davem@davemloft.net>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '398aa66', '2010-07-09', 'Will Deacon', 'ARM: 6212/1: atomic ops: add memory constraints to inline asm', 'ARM: 6212/1: atomic ops: add memory constraints to inline asm

Currently, the 32-bit and 64-bit atomic operations on ARM do not
include memory constraints in the inline assembly blocks. In the
case of barrier-less operations [for example, atomic_add], this
means that the compiler may constant fold values which have actually
been modified by a call to an atomic operation.

This issue can be observed in the atomic64_test routine in
<kernel root>/lib/atomic64_test.c:

00000000 <test_atomic64>:
   0:	e1a0c00d 	mov	ip, sp
   4:	e92dd830 	push	{r4, r5, fp, ip, lr, pc}
   8:	e24cb004 	sub	fp, ip, #4
   c:	e24dd008 	sub	sp, sp, #8
  10:	e24b3014 	sub	r3, fp, #20
  14:	e30d000d 	movw	r0, #53261	; 0xd00d
  18:	e3011337 	movw	r1, #4919	; 0x1337
  1c:	e34c0001 	movt	r0, #49153	; 0xc001
  20:	e34a1aa3 	movt	r1, #43683	; 0xaaa3
  24:	e16300f8 	strd	r0, [r3, #-8]!
  28:	e30c0afe 	movw	r0, #51966	; 0xcafe
  2c:	e30b1eef 	movw	r1, #48879	; 0xbeef
  30:	e34d0eaf 	movt	r0, #57007	; 0xdeaf
  34:	e34d1ead 	movt	r1, #57005	; 0xdead
  38:	e1b34f9f 	ldrexd	r4, [r3]
  3c:	e1a34f90 	strexd	r4, r0, [r3]
  40:	e3340000 	teq	r4, #0
  44:	1afffffb 	bne	38 <test_atomic64+0x38>
  48:	e59f0004 	ldr	r0, [pc, #4]	; 54 <test_atomic64+0x54>
  4c:	e3a0101e 	mov	r1, #30
  50:	ebfffffe 	bl	0 <__bug>
  54:	00000000 	.word	0x00000000

The atomic64_set (0x38-0x44) writes to the atomic64_t, but the
compiler doesn\'t see this, assumes the test condition is always
false and generates an unconditional branch to __bug. The rest of the
test is optimised away.

This patch adds suitable memory constraints to the atomic operations on ARM
to ensure that the compiler is informed of the correct data hazards. We have
to use the "Qo" constraints to avoid hitting the GCC anomaly described at
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=44492 , where the compiler
makes assumptions about the writeback in the addressing mode used by the
inline assembly. These constraints forbid the use of auto{inc,dec} addressing
modes, so it doesn\'t matter if we don\'t use the operand exactly once.

Cc: stable@kernel.org
Reviewed-by: Nicolas Pitre <nicolas.pitre@linaro.org>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '1244829', '2010-06-19', 'Andi Kleen', 'x86: Fix vsyscall on gcc 4.5 with -Os', 'x86: Fix vsyscall on gcc 4.5 with -Os

This fixes the -Os breaks with gcc 4.5 bug.  rdtsc_barrier needs to be
force inlined, otherwise user space will jump into kernel space and
kill init.

This also addresses http://gcc.gnu.org/bugzilla/show_bug.cgi?id=44129
I believe.

Signed-off-by: Andi Kleen <ak@linux.intel.com>
LKML-Reference: <20100618210859.GA10913@basil.fritz.box>
Signed-off-by: H. Peter Anvin <hpa@linux.intel.com>
Cc: <stable@kernel.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '746357d', '2009-11-20', 'Thomas Gleixner', 'x86: Prevent GCC 4.4.x (pentium-mmx et al) function prologue wreckage', 'x86: Prevent GCC 4.4.x (pentium-mmx et al) function prologue wreckage

When the kernel is compiled with -pg for tracing GCC 4.4.x inserts
stack alignment of a function _before_ the mcount prologue if the
-march=pentium-mmx is set and -mtune=generic is not set. This breaks
the assumption of the function graph tracer which expects that the
mcount prologue

       push %ebp
       mov  %esp, %ebp

is the first stack operation in a function because it needs to modify
the function return address on the stack to trap into the tracer
before returning to the real caller.

The generated code is:

        push   %edi
        lea    0x8(%esp),%edi
        and    $0xfffffff0,%esp
        pushl  -0x4(%edi)
        push   %ebp
        mov    %esp,%ebp

so the tracer modifies the copy of the return address which is stored
after the stack alignment and therefor does not trap the return which
in turn breaks the call chain logic of the tracer and leads to a
kernel panic.

Aside of the fact that the generated code is horrible for no good
reason other -march -mtune options generate the expected:

        push   %ebp
        mov    %esp,%ebp
        and    $0xfffffff0,%esp

which does the same and keeps everything intact.

After some experimenting we found out that this problem is restricted
to gcc4.4.x and to the following -march settings:

i586, pentium, pentium-mmx, k6, k6-2, k6-3, winchip-c6, winchip2, c3,
geode

By adding -mtune=generic the code generator produces always the
expected code.

So forcing -mtune=generic when CONFIG_FUNCTION_GRAPH_TRACER=y is not
pretty, but at the moment the only way to prevent that the kernel
trips over gcc-shrooms induced code madness.

Most distro kernels have CONFIG_X86_GENERIC=y anyway which forces
-mtune=generic as well so it will not impact those.

References: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=42109
	    http://lkml.org/lkml/2009/11/19/17

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
LKML-Reference: <alpine.LFD.2.00.0911200206570.24119@localhost.localdomain>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Ingo Molnar <mingo@elte.hu>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Frederic Weisbecker <fweisbec@gmail.com>,
Cc: Jeff Law <law@redhat.com>
Cc: gcc@gcc.gnu.org
Cc: David Daney <ddaney@caviumnetworks.com>
Cc: Andrew Haley <aph@redhat.com>
Cc: Richard Guenther <richard.guenther@gmail.com>
Cc: stable@kernel.org
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'a137802', '2009-07-13', 'Linus Torvalds', 'Don\'t use \'-fwrapv\' compiler option: it\'s buggy in gcc-4.1.x', 'Don\'t use \'-fwrapv\' compiler option: it\'s buggy in gcc-4.1.x

This causes kernel images that don\'t run init to completion with certain
broken gcc versions.

This fixes kernel bugzilla entry:
	http://bugzilla.kernel.org/show_bug.cgi?id=13012

I suspect the gcc problem is this:
	http://gcc.gnu.org/bugzilla/show_bug.cgi?id=28230

Fix the problem by using the -fno-strict-overflow flag instead, which
not only does not exist in the known-to-be-broken versions of gcc (it
was introduced later than fwrapv), but seems to be much less disturbing
to gcc too: the difference in the generated code by -fno-strict-overflow
are smaller (compared to using neither flag) than when using -fwrapv.

Reported-by: Barry K. Nathan <barryn@pobox.com>
Pushed-by: Frans Pop <elendil@planet.nl>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: stable@kernel.org
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'aa512a2', '2009-05-14', 'Steven Rostedt', 'x86/function-graph: fix constraint for recording old return value', 'x86/function-graph: fix constraint for recording old return value

After upgrading from gcc 4.2.2 to 4.4.0, the function graph tracer broke.
Investigating, I found that in the asm that replaces the return value,
gcc was using the same register for the old value as it was for the
new value.

	mov	(addr), old
	mov	new, (addr)

But if old and new are the same register, we clobber new with old!
I first thought this was a bug in gcc 4.4.0 and reported it:

  http://gcc.gnu.org/bugzilla/show_bug.cgi?id=40132

Andrew Pinski responded (quickly), saying that it was correct gcc behavior
and the code needed to denote old as an "early clobber".

Instead of "=r"(old), we need "=&r"(old).

[Impact: keep function graph tracer from breaking with gcc 4.4.0 ]

Signed-off-by: Steven Rostedt <rostedt@goodmis.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f9d1425', '2009-01-03', 'Linus Torvalds', 'Disallow gcc versions 4.1.{0,1}', 'Disallow gcc versions 4.1.{0,1}

These compiler versions are known to miscompile __weak functions and
thus generate kernels that don\'t necessarily work correctly.  If a weak
function is int he same compilation unit as a caller, gcc may end up
inlining it, and thus binding the weak function too early.

See

    http://gcc.gnu.org/bugzilla/show_bug.cgi?id=27781

for details.

Cc: Adrian Bunk <bunk@kernel.org>
Cc: Helge Deller <deller@gmx.de>
Cc: Rusty Russell <rusty@rustcorp.com.au>
Cc: Ingo Molnar <mingo@elte.hu>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '4037500', '2007-12-15', 'Ralf Baechle', '[MIPS] time: Delete weak definition of plat_time_init() due to gcc bug.', '[MIPS] time: Delete weak definition of plat_time_init() due to gcc bug.

Frank Rowand <frank.rowand@am.sony.com> reports:

> In linux-2.6.24-rc4 the Toshiba RBTX4927 hangs on boot.
>
> The cause is that plat_time_init() from arch/mips/tx4927/common/
> tx4927_setup.c does not override the __weak plat_time_init() from
> arch/mips/kernel/time.c.  This is due to a compiler bug in gcc 4.1.1.  The
> bug is reported to not exist in earlier versions of gcc, and to be fixed in
> 4.1.2.  The problem is that the __weak plat_time_init() is empty and thus
> gets optimized out of existence (thus the linker is never given the option
> to replace the __weak function).

[ He meant the call to plat_time_init() from time_init() gets optimized away ]

> For more info on the gcc bug see
>
>    http://gcc.gnu.org/bugzilla/show_bug.cgi?id=27781
>
> The attached patch is one workaround.  Another possible workaround

[ His patch adds -fno-unit-at-a-time for time.c ]

> would be to change the __weak plat_time_init() to be a non-empty
> function.

The __weak definition of plat_time_init was only ever meant to be a
migration helper to keep platforms that don\'t have a plat_time_init
compiling.  A few greps says that all platforms now supply their own
plat_time_init() so the weak definition is no longer needed.  So I
instead delete it.

Signed-off-by: Ralf Baechle <ralf@linux-mips.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'e001548', '2007-01-23', 'Herbert Xu', '[PATCH] vmx: Fix register constraint in launch code', '[PATCH] vmx: Fix register constraint in launch code

Both "=r" and "=g" breaks my build on i386:

  $ make
    CC [M]  drivers/kvm/vmx.o
  {standard input}: Assembler messages:
  {standard input}:3318: Error: bad register name `%sil\'
  make[1]: *** [drivers/kvm/vmx.o] Error 1
  make: *** [_module_drivers/kvm] Error 2

The reason is that setbe requires an 8-bit register but "=r" does not
constrain the target register to be one that has an 8-bit version on
i386.

According to

	http://gcc.gnu.org/bugzilla/show_bug.cgi?id=10153

the correct constraint is "=q".

Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'f940541', '2006-10-12', 'Ralf Baechle', '[MIPS] Workaround for bug in gcc -EB / -EL options.', '[MIPS] Workaround for bug in gcc -EB / -EL options.

Certain gcc versions upto gcc 4.1.1 (probably 4.2-subversion as of
2006-10-10 don\'t properly change the the predefined symbols if -EB / -EL
are used, so we kludge that here.  A bug has been filed at
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=29413.

Signed-off-by: Ralf Baechle <ralf@linux-mips.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', 'c8d5246', '2006-01-11', 'Anton Blanchard', '[PATCH] Work around ppc64 compiler bug', '[PATCH] Work around ppc64 compiler bug

In the process of optimising our per cpu data code, I found a ppc64
compiler bug that has been around forever. Basically the current
RELOC_HIDE can end up trashing r30. Details of the bug can be found at

  http://gcc.gnu.org/bugzilla/show_bug.cgi?id=25572

This bug is present in all compilers before 4.1. It is masked by the
fact that our current per cpu data code is inefficient and causes
other loads that end up marking r30 as used.

A workaround identified by Alan Modra is to use the =r asm constraint
instead of =g.

Signed-off-by: Anton Blanchard <anton@samba.org>
[ Verified that this makes no real difference on x86[-64] */
Signed-off-by: Linus Torvalds <torvalds@osdl.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('linux', '32818c2', '2005-08-27', 'Anton Blanchard', '[PATCH] ppc64: Fix issue with gcc 4.0 compiled kernels', '[PATCH] ppc64: Fix issue with gcc 4.0 compiled kernels

I recently had a BUG_ON() go off spuriously on a gcc 4.0 compiled kernel.
It turns out gcc-4.0 was removing a sign extension while earlier gcc
versions would not.  Thinking this to be a compiler bug, I submitted a
report:

http://gcc.gnu.org/bugzilla/show_bug.cgi?id=23422

It turns out we need to cast the input in order to tell gcc to sign extend
it.

Thanks to Andrew Pinski for his help on this bug.

Signed-off-by: Anton Blanchard <anton@samba.org>
Cc: Paul Mackerras <paulus@samba.org>
Signed-off-by: Andrew Morton <akpm@osdl.org>
Signed-off-by: Linus Torvalds <torvalds@osdl.org>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', 'd6514e0', '2023-12-14', 'claudio', 'Workaround for broken clang which has a broken -fno-zero-initialized-in-bss implementation.', 'Workaround for broken clang which has a broken -fno-zero-initialized-in-bss
implementation.

Set nkmempages to -1 by default instead of 0 so that the value ends up in
the data section. This way config(8) is able to alter the value as promised.

See also: https://github.com/llvm/llvm-project/issues/74632
OK miod@
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', '27d6422', '2021-07-30', 'pascal', 'Allow relocation R_386_GOTOFF to be used from .debug_info sections.  Newer GCC versions will sometimes emit it, and we have stumbled upon it a few times in ports.', 'Allow relocation R_386_GOTOFF to be used from .debug_info sections.  Newer
GCC versions will sometimes emit it, and we have stumbled upon it a few times
in ports.

Upstream commit: https://reviews.llvm.org/D95994
GCC bug report: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98946

ok kettenis@
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', 'c968ca6', '2020-11-20', 'gkoehler', 'Fix va_arg in C++, Objective-C on 32-bit powerpc', 'Fix va_arg in C++, Objective-C on 32-bit powerpc

In the PPC32 SVR4 ABI, a va_list has copies of registers from the
function call. va_arg looked in the wrong registers for (the pointer
representation of) an object in Objective-C, and for some types in
C++. Fix va_arg to look in the general-purpose registers, not the
floating-point registers. Also fix va_arg for some C++ types, like a
member function pointer, that are aggregates for the ABI.

Anthony Richardby found the problem in Objective-C. Eli Friedman
suggested part of this fix.

Fixes https://bugs.llvm.org/show_bug.cgi?id=47921
I have submitted this diff as https://reviews.llvm.org/D90329

ok kettenis@
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', 'c090f20', '2020-09-11', 'gkoehler', 'Disable strict floating point if not X86', 'Disable strict floating point if not X86

Disable options like clang -fno-unsafe-math-optimizations for all
targets except X86 (and SystemZ).  This prevents a crash of clang,
reported by cwen@, in graphics/babl or emulators/mednafen for powerpc.

ok mortimer@

This change comes from llvm 11.x:
https://github.com/llvm/llvm-project/commit/d4ce862

Reland "[FPEnv][Clang][Driver] Disable constrained floating point on targets lacking support."

We currently have strict floating point/constrained floating point enabled
for all targets. Constrained SDAG nodes get converted to the regular ones
before reaching the target layer. In theory this should be fine.

However, the changes are exposed to users through multiple clang options
already in use in the field, and the changes are _completely_ _untested_
on almost all of our targets. Bugs have already been found, like
"https://bugs.llvm.org/show_bug.cgi?id=45274".

This patch disables constrained floating point options in clang everywhere
except X86 and SystemZ. A warning will be printed when this happens.

Use the new -fexperimental-strict-floating-point flag to force allowing
strict floating point on hosts that aren\'t already marked as supporting
it (X86 and SystemZ).

Differential Revision: https://reviews.llvm.org/D80952
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', '18b70c1', '2017-09-29', 'robert', 'make clang include a FILE symbol for .(s|S) files', 'make clang include a FILE symbol for .(s|S) files

This is mostly needed by syspatch at the moment to be
to be able to re-link in the same order as the original
libraries were linked with by relying on the readelf(1)
and without this .(s|S) assembly files were not getting
a file directive.

A bug reports has been filed as well:
https://bugs.llvm.org/show_bug.cgi?id=34019

ok deraadt@
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', 'cec5ac9', '2017-05-09', 'espie', 'gcc 4.9 makes unknown -Wno-* vanish.', 'gcc 4.9 makes unknown -Wno-* vanish.

Reimplement that from scratch in our ancient gcc, because it\'s really
useful for porting newer code and dealing with compiler variations.
(slightly tweaked to reset location to unknown location after the okays)

okay kettenis@ jasper@

found out https://gcc.gnu.org/bugzilla/show_bug.cgi?id=28322
after the patch, which explains a similar reasoning better, and leads
to another patch for older GCC, possibly GPLv3.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', '26cf605', '2015-10-07', 'jsg', 'Correct handling of enum attributes with g++', 'Correct handling of enum attributes with g++

gcc and g++ can currently have different ideas on the size of a
packed enum type:

enum __attribute__((packed)) foo { a = 0, b};

gcc: 1
g++: 4

enum foo { a = 0, b} __attribute__((packed));

gcc: 1
g++: 1

The first format is actually the preferred one according to the
documentation.
https://gcc.gnu.org/onlinedocs/gcc-4.2.1/gcc/Type-Attributes.html
g++ will accept the first format and silently not actually choose a
smaller size.

This was responsible for memory corruption with recent versions
of Mesa where c and c++ code share a header with a packed enum type.

The problem was reported in
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=39219
and fixed in gcc >= 4.3.6 in rev 144284.
This was after the switch from gplv2 but it\'s a trivial one line change.

ok guenther@ deraadt@ kettenis@
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', '8529ddd', '2015-05-19', 'kettenis', 'Make the compiler emit visibility information for (undefined) references with non-default visibility.', 'Make the compiler emit visibility information for (undefined) references with
non-default visibility.

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=20218 for details.

This version comes from FreeBSD and has been made available under the GPLv2
license.  It has some additional bits thrown in from me to make it work in
mips64 too, and another bit to stop the C++ compiler to randomly emit
visibility information for C++ symbols that in the end aren\'t referenced.

ok guenther@
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', '0ec0601', '2010-01-10', 'fgsch', 'Fix use of `enumeral_type\' in template type unification error as seen when compiling boost 1.41. From http://gcc.gnu.org/bugzilla/show_bug.cgi?id=17327 via Markus Hennecke <markus-hennecke at markus-hennecke dot de>. miod@ tested and ok', 'Fix use of `enumeral_type\' in template type unification error as seen
when compiling boost 1.41.
From http://gcc.gnu.org/bugzilla/show_bug.cgi?id=17327 via
Markus Hennecke <markus-hennecke at markus-hennecke dot de>.
miod@ tested and ok
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('openbsd', 'aef8050', '2006-10-31', 'wilfried', 'Fix infinite loop when passing object with 3+ base classes by value: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=18300', 'Fix infinite loop when passing object with 3+ base classes by value:
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=18300

Needed by openoffice and boost on amd64

ok espie@ miod@
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', 'bedc16d', '2024-04-11', 'Timo Kreuzer', '[DEVMGR] Add DYNAMIC_FIELD_OFFSET macro', '[DEVMGR] Add DYNAMIC_FIELD_OFFSET macro

This replaces the usage of FIELD_OFFSET for dynamic indexing into array fields.
Sadly GCC has broken __builtin_offsetof and they don\'t seem to intend to fix it.
See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=95942
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', '0535332', '2021-09-12', 'Timo Kreuzer', '[FASTFAT_NEW] "Fix" Flags bitfield to avoid RTC error', '[FASTFAT_NEW] "Fix" Flags bitfield to avoid RTC error

Since VS 16.11 the compiler sometimes emits calls to _RTC_UninitUse, when parts of a bitfield are initialized (See https://developercommunity.visualstudio.com/t/Broken-runtime-checks-with-CL-19293013/1503629). Fix this by using an ULONG instead of a bitfield.
Note: The structure uses a 24 bit bitfield plus an UCHAR, which is supposed to form a 32 bit field, but that doesn\'t work anyway.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', '4130f0b', '2021-06-24', 'Joachim Henze', '[WIN32K] CreateDIBPalette addendum to #3758 CORE-17626', '[WIN32K] CreateDIBPalette addendum to #3758 CORE-17626

Fix compilation on older GCC4.7.2 toolchain
to not warn about universal zero initializer.
See
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=53119
https://stackoverflow.com/questions/13746033/how-to-repair-warning-missing-braces-around-initializer
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', '2aca4b2', '2020-09-12', 'Timo Kreuzer', '[ASM] Fix boot with VS 16.7.3 / MSVC 19.27', '[ASM] Fix boot with VS 16.7.3 / MSVC 19.27

See https://developercommunity.visualstudio.com/content/problem/1180800/ml-x86-assume-directive-causes-invalid-code-genera.html
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', '70bcd0f', '2019-11-24', 'Timo Kreuzer', '[CMAKE] Disable EH4 for x64 and VS versions 16.3+', '[CMAKE] Disable EH4 for x64 and VS versions 16.3+

This fixes x64 build with latest VS 2019
See https://developercommunity.visualstudio.com/content/problem/746534/visual-c-163-runtime-uses-an-unsupported-api-for-u.html
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', '1bd07ee', '2008-12-01', 'KJK::Hyperion', 'modified   include/reactos/probe.h    Workaround for gcc 4.1.3. See http://gcc.gnu.org/bugzilla/show_bug.cgi?id=38054#c7', 'modified   include/reactos/probe.h
   Workaround for gcc 4.1.3. See http://gcc.gnu.org/bugzilla/show_bug.cgi?id=38054#c7

modified   ntoskrnl/include/internal/mm.h
   gcc 4.3.2 doesn\'t like to be told to inline MmAcquirePageListLock

modified   ntoskrnl/include/internal/probe.h
   Cleaning up after TSVN\'s buggy "apply patch"

modified   subsystems/win32/win32k/ntuser/message.c
   Silence a gcc 4.3.2 warning (possibly incorrectly)

modified   dll/directx/ddraw/ddraw.rbuild
modified   dll/win32/gdi32/gdi32.rbuild
modified   dll/win32/kernel32/kernel32.rbuild
modified   dll/win32/psapi/psapi.rbuild
modified   dll/win32/setupapi/setupapi.rbuild
modified   dll/win32/syssetup/syssetup.rbuild
modified   dll/win32/user32/user32.rbuild
modified   drivers/input/kbdclass/kbdclass.rbuild
modified   drivers/input/mouclass/mouclass.rbuild
modified   drivers/network/afd/afd.rbuild
modified   drivers/network/tcpip/tcpip.rbuild
modified   lib/rtl/rtl.rbuild
modified   subsystems/win32/win32k/win32k.rbuild
modified   subsystems/win32/win32k/objects/gdiobj.c
   gcc 4.1.3 workarounds. See embedded comments

modified   base/services/eventlog/eventlog.h
modified   dll/win32/advapi32/advapi32.h
   Removed superfluous includes of pseh/pseh.h

modified   dll/directx/ddraw/Ddraw/ddraw_displaymode.c
modified   dll/directx/ddraw/Ddraw/ddraw_main.c
modified   dll/directx/ddraw/Ddraw/ddraw_setcooperativelevel.c
modified   dll/directx/ddraw/Ddraw/GetCaps.c
modified   dll/directx/ddraw/Ddraw/GetDeviceIdentifier.c
modified   dll/directx/ddraw/main.c
modified   dll/directx/ddraw/rosdraw.h
modified   dll/directx/ddraw/Surface/surface_main.c
   ddraw migrated to PSEH 2.0

modified   dll/win32/gdi32/include/precomp.h
modified   dll/win32/gdi32/misc/misc.c
modified   dll/win32/gdi32/objects/bitmap.c
   gdi32 migrated to PSEH 2.0

modified   dll/win32/kernel32/except/except.c
modified   dll/win32/kernel32/file/find.c
modified   dll/win32/kernel32/k32.h
modified   dll/win32/kernel32/mem/isbad.c
modified   dll/win32/kernel32/misc/console.c
modified   dll/win32/kernel32/process/procsup.c
modified   dll/win32/kernel32/string/lstring.c
modified   dll/win32/kernel32/thread/thread.c
   kernel32 migrated to PSEH 2.0

modified   dll/win32/psapi/precomp.h
modified   dll/win32/psapi/psapi.c
   psapi migrated to PSEH 2.0

modified   dll/win32/setupapi/cfgmgr.c
modified   dll/win32/setupapi/setupapi_private.h
   setupapi migrated to PSEH 2.0

modified   dll/win32/syssetup/wizard.c
   syssetup migrated to PSEH 2.0

modified   dll/win32/user32/include/user32.h
modified   dll/win32/user32/windows/class.c
modified   dll/win32/user32/windows/text.c
modified   dll/win32/user32/windows/window.c
   user32 migrated to PSEH 2.0

modified   drivers/input/kbdclass/kbdclass.c
modified   drivers/input/kbdclass/kbdclass.h
   kbdclass migrated to PSEH 2.0

modified   drivers/input/mouclass/mouclass.c
modified   drivers/input/mouclass/mouclass.h
   mouclass migrated to PSEH 2.0

modified   drivers/network/afd/afd/info.c
modified   drivers/network/afd/afd/lock.c
modified   drivers/network/afd/afd/tdi.c
modified   drivers/network/afd/afd/tdiconn.c
   afd migrated to PSEH 2.0

modified   drivers/network/lan/lan/lan.c
   lan migrated to PSEH 2.0

modified   drivers/network/tcpip/tcpip/dispatch.c
   tcpip migrated to PSEH 2.0

modified   lib/rtl/debug.c
modified   lib/rtl/res.c
modified   lib/rtl/rtl.h
modified   lib/rtl/unicode.c
modified   lib/rtl/workitem.c
   rtl migrated to PSEH 2.0

modified   ntoskrnl/include/precomp.h
   ntoskrnl migrated to PSEH 2.0

modified   subsystems/csr/csrsrv/api.c
   csrsrv migrated to PSEH 2.0

modified   subsystems/win32/win32k/eng/bitblt.c
modified   subsystems/win32/win32k/eng/mem.c
modified   subsystems/win32/win32k/include/mmcopy.h
modified   subsystems/win32/win32k/misc/copy.c
modified   subsystems/win32/win32k/ntuser/callback.c
modified   subsystems/win32/win32k/ntuser/class.c
modified   subsystems/win32/win32k/ntuser/clipboard.c
modified   subsystems/win32/win32k/ntuser/cursoricon.c
modified   subsystems/win32/win32k/ntuser/display.c
modified   subsystems/win32/win32k/ntuser/hook.c
modified   subsystems/win32/win32k/ntuser/input.c
modified   subsystems/win32/win32k/ntuser/kbdlayout.c
modified   subsystems/win32/win32k/ntuser/menu.c
modified   subsystems/win32/win32k/ntuser/misc.c
modified   subsystems/win32/win32k/ntuser/ntstubs.c
modified   subsystems/win32/win32k/ntuser/painting.c
modified   subsystems/win32/win32k/ntuser/simplecall.c
modified   subsystems/win32/win32k/ntuser/sysparams.c
modified   subsystems/win32/win32k/ntuser/window.c
modified   subsystems/win32/win32k/objects/bitblt.c
modified   subsystems/win32/win32k/objects/bitmaps.c
modified   subsystems/win32/win32k/objects/brush.c
modified   subsystems/win32/win32k/objects/cliprgn.c
modified   subsystems/win32/win32k/objects/color.c
modified   subsystems/win32/win32k/objects/coord.c
modified   subsystems/win32/win32k/objects/dc.c
modified   subsystems/win32/win32k/objects/dcutil.c
modified   subsystems/win32/win32k/objects/dibobj.c
modified   subsystems/win32/win32k/objects/fillshap.c
modified   subsystems/win32/win32k/objects/font.c
modified   subsystems/win32/win32k/objects/freetype.c
modified   subsystems/win32/win32k/objects/icm.c
modified   subsystems/win32/win32k/objects/line.c
modified   subsystems/win32/win32k/objects/path.c
modified   subsystems/win32/win32k/objects/pen.c
modified   subsystems/win32/win32k/objects/print.c
modified   subsystems/win32/win32k/objects/region.c
modified   subsystems/win32/win32k/objects/text.c
modified   subsystems/win32/win32k/pch.h
   win32k migrated to PSEH 2.0

svn path=/trunk/; revision=37776
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', 'feee728', '2008-11-30', 'KJK::Hyperion', 'modified   base/shell/explorer/explorer.rbuild    The TDM build of gcc 4.3.2 is affected by PR 27067 (http://gcc.gnu.org/bugzilla/show_bug.cgi?id=27067), apparently due to a missing MinGW-only patch - work around it in the linker', 'modified   base/shell/explorer/explorer.rbuild
   The TDM build of gcc 4.3.2 is affected by PR 27067 (http://gcc.gnu.org/bugzilla/show_bug.cgi?id=27067), apparently due to a missing MinGW-only patch - work around it in the linker

modified   dll/directx/ddraw/d3d/DirectD3D_main.c
modified   dll/directx/ddraw/Ddraw/ddraw_displaymode.c
modified   dll/directx/ddraw/Ddraw/ddraw_main.c
modified   dll/directx/ddraw/Ddraw/ddraw_setcooperativelevel.c
modified   dll/directx/ddraw/Ddraw/GetCaps.c
modified   dll/directx/ddraw/Ddraw/GetDeviceIdentifier.c
modified   dll/directx/ddraw/main.c
modified   dll/directx/ddraw/Surface/createsurface.c
   <pseh/pseh.h> already included in rosdraw.h

modified   dll/win32/advapi32/misc/trace.c
   Silence a warning reported by gcc 4.3.2 (possibly incorrectly, but it\'s just a stub anyway)

modified   ntoskrnl/include/internal/ntoskrnl.h
added      ntoskrnl/include/internal/probe.h
replaced   ntoskrnl/include/ntoskrnl.h
added      ntoskrnl/include/precomp.h
modified   ntoskrnl/ntoskrnl-generic.rbuild
added      subsystems/win32/win32k/pch.h
replaced   subsystems/win32/win32k/w32k.h
modified   subsystems/win32/win32k/win32k.rbuild
   gcc 4.3.2-tdm-1 doesn\'t like PSEH in precompiled headers. Shuffle things around a bit to remove PSEH from precompiled headers

svn path=/trunk/; revision=37757
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', 'c086cc2', '2008-11-24', 'KJK::Hyperion', 'Everything    Migrate ntoskrnl to PSEH 2.0. The code should speak for itself', 'Everything
   Migrate ntoskrnl to PSEH 2.0. The code should speak for itself

modified   ntoskrnl/ex/atom.c
   _SEH_LEAVE was used improperly in NtQueryInformationAtom. As a free bonus, the upgrade to PSEH 2.0 (and to _SEH2_LEAVE) fixes the potential bug

modified   ntoskrnl/fsrtl/fastio.c
   Corrected exception filter logic

modified   ntoskrnl/include/internal/ex.h
   Goodbye _SEH_ExSystemExceptionFilter, you won\'t be missed

modified   ntoskrnl/include/internal/ntoskrnl.h
   Don\'t FORCEINLINE functions that use SEH, it\'s bad form and the compiler doesn\'t like

modified   ntoskrnl/ke/i386/usercall.c
   Dispatch the correct EXCEPTION_RECORD in case of exception inside KiInitializeUserApc

modified   ntoskrnl/ke/powerpc/exp.c
   Removed bogus, unused SEH code

modified   ntoskrnl/ntoskrnl-generic.rbuild
   Sources using PSEH 2.0 must be compiled with -fno-unit-at-a-time due to a GCC bug. See also http://gcc.gnu.org/bugzilla/show_bug.cgi?id=17982 and http://gcc.gnu.org/bugzilla/show_bug.cgi?id=38054
   Apparently, -fno-unit-at-a-time makes GCC crash when using precompiled headers. Disable precompiled headers for ntoskrnl

svn path=/trunk/; revision=37615
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', '0cc5134', '2008-11-24', 'KJK::Hyperion', 'modified   include/psdk/rpc.h    Implemented RPC exception handling macros with PSEH 2.0', 'modified   include/psdk/rpc.h
   Implemented RPC exception handling macros with PSEH 2.0

modified   base/services/rpcss/rpcss.rbuild
modified   dll/win32/rpcrt4/rpcrt4.rbuild
   RPC proxy stubs now depend on pseh. We should really add pseh as a link dependency automatically in rbuild, but, eh

modified   tools/rbuild/backend/mingw/modulehandler.cpp
   Compile RPC proxy stubs with -fno-unit-at-a-time due to a GCC bug. See also http://gcc.gnu.org/bugzilla/show_bug.cgi?id=17982 and http://gcc.gnu.org/bugzilla/show_bug.cgi?id=38054

svn path=/trunk/; revision=37614
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', '28d278b', '2005-05-28', 'KJK::Hyperion', 'Workaround for GCC inline assembly bug, hopefully fixed for good. Builds for me in both checked and free Bug details and status here: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=10153', 'Workaround for GCC inline assembly bug, hopefully fixed for good. Builds for me in both checked and free
Bug details and status here: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=10153


svn path=/trunk/; revision=15584
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('reactos', 'b670149', '2005-02-16', 'Filip Navara', 'Fix inline assembler register specification (http://gcc.gnu.org/bugzilla/show_bug.cgi?id=10153).', 'Fix inline assembler register specification (http://gcc.gnu.org/bugzilla/show_bug.cgi?id=10153).

svn path=/trunk/; revision=13587
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '48a28cf', '2025-01-02', 'Nico Weber', 'AK: Make FloatExtractor use bit_cast<>() instead of a union', 'AK: Make FloatExtractor use bit_cast<>() instead of a union

The motivation is to allow functions that use FloatExtractor to be
constexpr.  Type punning through a union will never work in constexpr.

In practice, bit_cast<>()ing bit fields also does not yet work in clang,
but that\'s just a bug and it will work eventually (and it does already
work in gcc): https://github.com/llvm/llvm-project/issues/54018

No behavior change.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', 'a06c27c', '2024-07-23', 'Daniel Bertalan', 'LibWeb/DOM: Work around GCC 14 warning on always true `is<T>()`', 'LibWeb/DOM: Work around GCC 14 warning on always true `is<T>()`

GCC 14 emits a warning when an always succeeding `dynamic_cast`\'s return
value is compared to NULL inside the `AK::is<T>(U)` template when `T` ==
`U`.

While warning on tautological `is` calls seems useful, it\'s a bit
awkward when it comes from a function template where the cast may fail
in some instantiation. There is a GCC bug open for it:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=115664

Work around the warning by performing the algorithm on the base type
(`EventTarget`), with a wrapper that casts it to the more specialized
input type.

(cherry picked from commit 31eb0ed938dff11dee7391a4f616f4132aa250c0)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '56b7f9e', '2024-07-13', 'Dan Klishch', 'Meta: Globally disable -Wpsabi', 'Meta: Globally disable -Wpsabi

This warning is triggered when one accepts or returns vectors from a
function (that is not marked with [[gnu::target(...)]]) which would have
been otherwise passed in register if the current translation unit had
been compiled with more permissive flags wrt instruction selection (i.
e. if one adds -mavx2 to cmdline). This will never be a problem for us
since we (a) never use different instruction selection options across
ABI boundaries; (b) most of the affected functions are actually
TU-local.

Moreover, even if we somehow properly annotated all of the SIMD helpers,
calling them across ABI (or target) boundaries would still be very
dangerous because of inconsistent and bogus handling of
[[gnu::target(...)]] across compilers. See
https://github.com/llvm/llvm-project/issues/64706 and
https://www.reddit.com/r/cpp/comments/17qowl2/comment/k8j2odi .
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '637ccac', '2024-05-30', 'Daniel Bertalan', 'AK: Enable format string checking in Clang builds', 'AK: Enable format string checking in Clang builds

Format string checking was disabled in Clang-based builds due to a
compiler bug: https://github.com/llvm/llvm-project/issues/51182. Now
that the requirement has been raised to Clang 17, that is no longer
necessary.

This has been tested to work correctly with Apple Clang 15.0.0 (which is
the *least modern* supported compiler), as well as CLion 2024.1\'s
bundled Clangd.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', 'cc92c3f', '2024-04-21', 'Daniel Bertalan', 'LibCrypto+LibGfx: Fix GCC 14 compile errors', 'LibCrypto+LibGfx: Fix GCC 14 compile errors

The C++ standard does not allow specifying the template parameters in
constructor declarations, see
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97202#c8.

Converting constructors have a higher priority that user-defined
conversion functions; let\'s constrain `Gfx::Size<T>(Gfx::Size<U>)` to
only be considered when `U` is convertible to `T`. This lets us fall
back to conversion operators in the case of `UISize` -> `IntSize`, for
instance. Clang is still okay without this, but MSVC would error out
similarly: https://godbolt.org/z/PTbeYPM7s

Note that a not-yet-committed patch is required for full compilation:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=114784#c3
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '3b84b03', '2024-04-17', 'Andrew Kaster', 'Toolchain: Cherry-pick gcc patch for poisoned includes on libc++ hosts', 'Toolchain: Cherry-pick gcc patch for poisoned includes on libc++ hosts

Port the fix for https://gcc.gnu.org/bugzilla/show_bug.cgi?id=111632
which was committed to gcc/master as
https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git;h=9970b576b7e4ae337af1268395ff221348c4b34a

This fixes the GCC Toolchain build on macOS hosts, and presumably
FreeBSD-15 as well.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '6f972c1', '2023-11-06', 'Daniel Bertalan', 'Everywhere: Work around Clang trunk bug with templated lambda + Variant', 'Everywhere: Work around Clang trunk bug with templated lambda + Variant

Since 2023-09-08, Clang trunk has had a bug which causes a segfault when
evaluating certain `requires` expressions inside templated lambdas.
There isn\'t an imminent fix on the horizon, so let\'s work around the
issue by specifying the type of the offending lambda arguments
explicitly.

See https://github.com/llvm/llvm-project/issues/67260
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '8df5bd5', '2023-05-15', 'Daniel Bertalan', 'AK: Silence false positive -Warray-bounds warning', 'AK: Silence false positive -Warray-bounds warning

This regression has been reported to GCC\'s Bugzilla:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=109727

The formatting change looks like a clang-format 15 bug :(
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '00b4976', '2023-05-02', 'Daniel Bertalan', 'Everywhere: Make Lagom build with GCC 13', 'Everywhere: Make Lagom build with GCC 13

GCC 13 was released on 2023-04-26. This commit fixes Lagom build errors
when using an updated host toolchain:
- Adds a workaround for a bug in constraint handling, which made LibJS
  fail to compile: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=109683
- Silences the new `-Wdangling-reference` diagnostic globally. It
  produces multiple false positives with no clear way to silence them
  without `#pragmas`.
- Silences `-Wself-move` in `RefPtr` tests as GCC 13 adds this
  previously Clang-exclusive warning.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '0016f63', '2023-03-30', 'Daniel Bertalan', 'AK: Fix Clang 16 UBSan issue with zero-length `Array`', 'AK: Fix Clang 16 UBSan issue with zero-length `Array`

The current implementation of `Array<T, 0>` has a zero-length C array as
its storage type. While this is accepted as a GNU extension, when
compiling with Clang 16, an UBSan error is raised every time an object
is accessed whose only field is a zero-length array.

This is likely a bug in Clang 16\'s implementation of UBSan, which has
been reported here: https://github.com/llvm/llvm-project/issues/61775
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', 'fd3e3d5', '2022-05-12', 'Daniel Bertalan', 'LibC+Kernel: Prevent string functions from calling themselves', 'LibC+Kernel: Prevent string functions from calling themselves

Most of the string.h and wchar.h functions are implemented quite naively
at the moment, and GCC\'s pattern recognition pass might realize what we
are trying to do, and transform them into libcalls. This is usually a
useful optimization, but not when we\'re implementing the functions
themselves :^)

Relevant discussion from the GCC Bugzilla:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102725

This prevents the infamous recursive `strlen`.

A more proper fix would be writing these functions in assembly. That
would likely give a small performance boost as well ;)
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '1faffc2', '2021-10-18', 'Daniel Bertalan', 'Kernel: Introduce workaround to make LTO builds work with Clang', 'Kernel: Introduce workaround to make LTO builds work with Clang

LLD fails to define the _GLOBAL_OFFSET_TABLE_ symbol if all inputs to it
are LLVM bitcode files (i.e. those used for LTO). To allow the kernel to
be built with ThinLTO, the workaround suggested in the original LLVM bug
report (<https://bugs.llvm.org/show_bug.cgi?id=39634>) is added in this
commit.
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '7fb41d6', '2021-08-08', 'Daniel Bertalan', 'WindowServer: Fix \'use of GNU old-style field designator\'', 'WindowServer: Fix \'use of GNU old-style field designator\'

Since C99 and C++20 have a standardized syntax for designated
initializer, we should use that instead of this GCC-specific extension.
While this currently works both in Clang and GCC, the former emits a
warning for it, while the latter has an [issue] open that plans to
deprecate it.

[issue]: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=88144
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('serenity', '73fab93', '2021-04-15', 'Brian Gianforcaro', 'Toolchain: Update to the latest gcc release 10.3.0', 'Toolchain: Update to the latest gcc release 10.3.0

10.3.0 is a bugfix release, with 178 bugs fixed.
See: https://gcc.gnu.org/bugzilla/buglist.cgi?bug_status=RESOLVED&resolution=FIXED&target_milestone=10.3
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', 'd4e48d5', '2023-08-14', 'Alberto Escolar Piedras', 'POSIX arch: Fix literal floating comparison in 32bit targets', 'POSIX arch: Fix literal floating comparison in 32bit targets

When building the 32bit native board targets variants
for x86(-64) hosts, gcc will promote float literals to double
(See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=92875 )

This can result in unexpected comparison differences.

This is due to the compiler using the 8087 float mode by
default.
Instead let\'s tell the compiler to use the SSE float path,
which is the default for 64 bit x86-64 builds.

The assumption that any x86 host used for development
will have SSE support should be safe enough.

For more background see
https://github.com/zephyrproject-rtos/zephyr/issues/61345

Signed-off-by: Alberto Escolar Piedras <alberto.escolar.piedras@nordicsemi.no>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', '8027072', '2022-08-02', 'Reto Schneider', 'scripts: requirements: extras: Suitable clang-format version', 'scripts: requirements: extras: Suitable clang-format version

Even when BreakBeforeBraces is set to Linux, implying BraceWrapping for
AfterEnum to be true, clang-format version 12 puts the opening brace of
an enum declaration on a new line. [1]

One possible workaround would be to change AllowShortEnumsOnASingleLine
from false to true, but that would yield a different kind of unwanted
formatting.

clang-format version 13 and newer have this issue fixed, therefore
bumping the minimal version.

[1] https://github.com/llvm/llvm-project/issues/48983

Signed-off-by: Reto Schneider <reto.schneider@husqvarnagroup.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', '0b09ca8', '2022-02-02', 'Daniel Leung', 'cmake: compiler/xcc: override and clear debug property for clang', 'cmake: compiler/xcc: override and clear debug property for clang

Some older versions of XCC Clang would result in the following
error during compilation:

  /tmp/file.s: Assembler messages:
  /tmp/file.s:20: Error: file number 1 already allocated
  clang-3.9: error: Xtensa-as command failed with exit code 1

due to a bug in LLVM: https://bugs.llvm.org/show_bug.cgi?id=11740.
This is fixed in upstream, https://reviews.llvm.org/D20002, in 2016.
However, it seems that it is only fixed after XCC RI-2018.0.
Instead of blanket disabling usage of \'-g\', use an environment
variable "XCC_NO_G_FLAG" to disable usage of flag \'-g\' to workaround
this issue. This needs to be manually set because there is no way to
know which XCC version is being used, and compiler flag checking for
\'-g\' would not result in error (and thus \'-g\' is not ignored).
This is only needed for older XCC Clang. For sufficiently new XCC
verisons, there is no need for this.

Note that this is an alternative implementation to commit
deeb98da5328c6fbdfc4ad1c7638a205d86f83e7. This one does not
alter the GCC flag file, and instead, simply clear the debug
compiler property so "-g" is not used.

Signed-off-by: Daniel Leung <daniel.leung@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', 'deeb98d', '2022-01-26', 'Daniel Leung', 'cmake: compiler/xcc: omit -g if needed for Clang', 'cmake: compiler/xcc: omit -g if needed for Clang

Some older versions of XCC Clang would result in the following
error during compilation:

  /tmp/file.s: Assembler messages:
  /tmp/file.s:20: Error: file number 1 already allocated
  clang-3.9: error: Xtensa-as command failed with exit code 1

due to a bug in LLVM: https://bugs.llvm.org/show_bug.cgi?id=11740.
This is fixed in upstream, https://reviews.llvm.org/D20002, in 2016.
However, it seems that it is only fixed after XCC RI-2018.0.
Instead of blanket disabling usage of \'-g\', use an environment
variable "XCC_NO_G_FLAG" to disable usage of flag \'-g\' to workaround
this issue. This needs to be manually set because there is no way to
know which XCC version is being used, and compiler flag checking for
\'-g\' would not result in error (and thus \'-g\' is not ignored).
This is only needed for older XCC Clang. For sufficiently new XCC
verisons, there is no need for this.

Signed-off-by: Daniel Leung <daniel.leung@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', '9602c65', '2019-12-13', 'Daniel Leung', 'json: fix unnamed fields in initializers for GCC < 4.6', 'json: fix unnamed fields in initializers for GCC < 4.6

The unnamed unions inside json_obj_descr struct causes issues
with the initializer macros due to bug described here:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=10676
The issue is that for GCC < 4.6, it cannot handle unnamed
fields in initializers. So apply the workarounds described
in the bug report.

Signed-off-by: Daniel Leung <daniel.leung@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', '5f353e0', '2016-02-06', 'Daniel Leung', 'spi: change inline functions to static inline', 'spi: change inline functions to static inline

When compiling with optimization level 0 (-O0), the linker complains
about missing references to uart functions. This is due to compiler
treating this functions as extern, since -O0 disables function inlining,
as described in https://gcc.gnu.org/bugzilla/show_bug.cgi?id=49653

So change the declaration to static inline.

Change-Id: I2b75e686961878f299bb951b5a420f9738594795
Signed-off-by: Daniel Leung <daniel.leung@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', '03066f2', '2016-02-06', 'Daniel Leung', 'gpio: change inline functions to static inline', 'gpio: change inline functions to static inline

When compiling with optimization level 0 (-O0), the linker complains
about missing references to uart functions. This is due to compiler
treating this functions as extern, since -O0 disables function inlining,
as described in https://gcc.gnu.org/bugzilla/show_bug.cgi?id=49653

So change the declaration to static inline.

Change-Id: Ifd835bf0e667afb1cbf2e76bb490664af87c382d
Signed-off-by: Daniel Leung <daniel.leung@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', 'ed9cdac', '2016-02-06', 'Daniel Leung', 'i2c: change inline functions to static inline', 'i2c: change inline functions to static inline

When compiling with optimization level 0 (-O0), the linker complains
about missing references to uart functions. This is due to compiler
treating this functions as extern, since -O0 disables function inlining,
as described in https://gcc.gnu.org/bugzilla/show_bug.cgi?id=49653

So change the declaration to static inline.

Change-Id: I5963153dc1efd22083b6b91ae2b70c11d602c6c6
Signed-off-by: Daniel Leung <daniel.leung@intel.com>
');
INSERT INTO bugs.compiler_table (project_name, id, date, author, title, comment) VALUES ('zephyr', '94718c7', '2016-02-06', 'Daniel Leung', 'uart: change inline functions to static inline', 'uart: change inline functions to static inline

When compiling with optimization level 0 (-O0), the linker complains
about missing references to uart functions. This is due to compiler
treating this functions as extern, since -O0 disables function inlining,
as described in https://gcc.gnu.org/bugzilla/show_bug.cgi?id=49653

So change the declaration to static inline.

Change-Id: I59607cffbd1cae141a9eeaca699549ebf8203061
Signed-off-by: Daniel Leung <daniel.leung@intel.com>
');
