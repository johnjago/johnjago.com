---
title: "Linux snippets"
type: "meta"
draft: false
---

Using [text as an interface](https://thesephist.com/posts/text/) comes with a
higher learning curve, but it pays dividends in the long run.

> the second reason that’s driving the industry to text is that the focus of software services has shifted from manipulating data to manipulating workflows. We’ve learned how to store and sift through data in our computers as a society, so we’re moving up a step of abstraction, to storing and sharing the how’s of our work, not just the what’s.

Here's how to…

turn a text file into a PDF:

```sh
enscript file.txt --output=- | ps2pdf - > file.pdf
```

list your top *n* most used commands:

```sh
history | awk 'BEGIN {FS="[ \t]+|\\|"} {print $3}' | sort | uniq -c | sort -nr | head -n 40
```

comment out a block of code in Vim:

```
Ctrl+v
Shift+I
<comment symbol>
Esc
```
