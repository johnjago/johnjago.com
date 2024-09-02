+++
title = 'Ignore all whitespace with git diff -w'
slug = 'git-diff-ignore-whitespace'
date = 2024-09-01T19:48:13-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'technical'
+++

Sometimes you need to surround a block of code with an if statement, or put a block of code inside a for loop, and there’s no way around it.

When you review the change using `git diff`, it shows the entire block as changed, making it hard to see what’s actually been removed, added, and modified.

Maybe you’ve seen something like this before:

```
~/code/sample (main) git diff
diff --git a/sample.js b/sample.js
index 50976cf..432b8e8 100644
--- a/sample.js
+++ b/sample.js
@@ -1,11 +1,13 @@
-function foo() {
-       bar1();
-       bar2();
-       bar3();
-       bar4();
-       bar5();
-       bar6();
-       bar7();
-       bar8();
-       bar9();
+function foo(allowed) {
+       if (allowed) {
+               bar1();
+               bar2();
+               bar3();
+               bar4();
+               bar5();
+               bar6();
+               bar7();
+               bar8();
+               bar9();
+       }
 }
```

I wrapped the contents of the function in an if statement, but because I indented all the code, it’s all showing as changed.

How do you ignore the indentation?

`git diff -w` will ignore changes in whitespace, like indented blocks of code:

```
~/code/sample (main) git diff -w
diff --git a/sample.js b/sample.js
index 50976cf..432b8e8 100644
--- a/sample.js
+++ b/sample.js
@@ -1,4 +1,5 @@
-function foo() {
+function foo(allowed) {
+       if (allowed) {
                bar1();
                bar2();
                bar3();
@@ -9,3 +10,4 @@ function foo() {
                bar8();
                bar9();
        }
+}
```

Now, only the if statement and its closing brace (although Git wasn’t too smart about that either) are shown as added inside the function, making the diff much easier to understand.

***

What if you change only one line in the block?

That line will show in the diff, and the remainder of the code that was indented still isn’t shown as changed.

In my example below, it’s showing the whole function because it’s relatively small. If it’s larger, Git will abbreviate as needed.

```sh
~/code/sample (main) git diff -w
diff --git a/sample.js b/sample.js
index 50976cf..bea391d 100644
--- a/sample.js
+++ b/sample.js
@@ -1,11 +1,13 @@
-function foo() {
+function foo(allowed) {
+       if (allowed) {
                bar1();
                bar2();
                bar3();
-       bar4();
+               bar44();
                bar5();
                bar6();
                bar7();
                bar8();
                bar9();
        }
+}
```

***

Below are screenshots of the same thing in my terminal. In the screenshots, it’s a little more clear the large difference `git diff -w` makes in terms of focusing on the actual changed lines of code.

The output of `git diff`, showing many lines of code as changed just because they’ve been indented:

![Screenshot of the output of `git diff` in a terminal, showing many lines of code as changed just because they’ve been indented.](/git-diff-ignore-whitespace/git-diff.png)

The output of `git diff -w`, which ignores whitespace changes:

![Screenshot of the output of `git diff -w`, which ignores whitespace changes, so the lines of code that were only indented aren’t shown as changed lines.](/git-diff-ignore-whitespace/git-diff-w.png)
