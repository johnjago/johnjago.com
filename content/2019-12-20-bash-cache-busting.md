---
title: "Cache busting with Bash"
date: 2019-12-20T20:48:07-06:00
type: "post"
category: "technical"
slug: "bash-cache-busting"
draft: false
---

If you have worked with websites and CSS in particular, you may have noticed
something annoying. Whenever you change the styles, the browser does not pick
up the new styles until you "clear the cache." Even more annoying, you have to
tell your websites visitors to clear *their* cache, and they probably don't
even know what a cache is! But you know what it is and why it's important
for a good user experience.

Luckily, with only a few lines of Bash, you can implement your own cache
busting system that will force the browser to download the newest version of
the style sheet, but only if there are changes.

Suppose we have two files, index.html and style.css. The Bash script looks like
this:

```
#!/bin/bash

FILE='style.css'

# md5sum outputs the hash followed by the filename.
# Only the hash part is needed, so wrap the result in an array
# and index the first element in the array by the name.
# e.g. HASH and HASH[0] refer to the start of the array.
HASH=($(md5sum $FILE))

FILE_WITH_HASH=style.$HASH.css
cp $FILE $FILE_WITH_HASH
sed -i "s/style[.0-9a-z]*.css/$FILE_WITH_HASH/g" index.html
```

There are a few things going on here, so let's look at it in more detail.

The first line sets a variable equal to the name of the CSS file.

Then we compute the MD5 hash of the file. We'll get a name that looks like
`style.8e540168fe275866a90657648ae6db16.css` (bonus points if you can tell me
the contents of a CSS file that produces this hash). However, at this point
it's only a string that is assigned to a variable. We have to copy our style.css
file to a file with this name.

Lastly, in the index.html file, we replace style.css (I optionally match an MD5
hash in case you don't use a tool like Travis CI which operates on a clean copy
of the files each time) with style.8e540168fe275866a90657648ae6db16.css.

If you don't change the file, the hash stays the same, and it's all good.

This is a basic example, but you could extend the script
to operate on multiple CSS files.

Run this script every time you make changes to your website (preferably
automating even this task since, you know, computers are good at that type of
thing), and you'll never have to clear your or your neighbor's cache again.
