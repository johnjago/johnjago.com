---
title: "To get it ready, use it in production"
date: 2021-09-25
type: "post"
category: "technical"
slug: "production"
draft: false
---

The best way to get software ready for production is to use it in production.

This is something I've noticed while working on many projects, personal and professional. There are use cases that you just don't come across while constructing the project in an artificial environment. At least I tend to be bad at thinking of use cases and test cases, and I'll often get something working seemingly perfectly, call it done, only to find out when I first use it for real that it still has a long way to go.

For example, recently I made a file uploading service, mostly for my own personal use. I often need to transfer files between devices of different operating systems, like macOS to an Android phone, and a lot of existing solutions for this are clunky. A straightforward way to do this if you don't have the devices set up ahead of time is to just use a file uploading website, get a link, and open that link on the other device. There are a few other details that I won't go into here.

Easy enough, right? It's been done so many times before, and I can count the use cases on one hand.

To my surprise, the first time I used my own file uploading service for a real use case, it didn't work! While developing it, I always tested it with small sample files. In real life, where I had a large file to upload, it simply didn't work. So much for "finishing" the project. Let's fire up the editor.

Okay, so that bug is fixed. It should be ready now, right? The next time I upload some files, it works. I have a download page with links to the files and a QR code. I click on one of the links, and the browser displays an error page telling me that it can't connect. What?

Oh, silly me. I see a hard coded "localhost" in the URL. At least I can edit the URL and download my files, but the QR code is useless because I can't edit that.

A single hour of using the file uploading service in production was more productive than a day of sitting around the text editor, trying to imagine how my code might fail.

This also happened at the startup I'm working at. Around the same time last year, our solution was working perfectly, and all we had left to do is market it. We couldn't have been more wrong. Back then we had zero customers. Now we have over 300. Needless to say, we did not even fathom some of the use cases.

The lesson here is, if you're stuck wondering what else you could do to improve some software that you're making, just drop everything and launch it, have real people use it, use it yourself to accomplish mission critical tasks. You'll quickly see that your software doesn't work, and you'll have plenty of work to keep you busy.
