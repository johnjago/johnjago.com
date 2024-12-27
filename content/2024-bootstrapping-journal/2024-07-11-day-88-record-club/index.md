+++
title = 'Day 88: Inspired by Record Club'
url = 'day-88-record-club'
date = 2024-07-11T16:46:59-05:00
location = 'Waukee, Iowa'
type = 'post'
unlisted = false
draft = false
+++

Some time ago, I came across Record Club, which calls itself “A new way to discover and share music with friends.”

This won’t be a post discussing their idea—just [their blog page](https://record.club/blog).

I liked how when you hovered over a card, the whole card was clickable. However, they didn’t wrap an `<a>` around the whole card—that wouldn’t be good for accessibility and SEO. The anchor tag only wrapped around the title of the post.

![GIF of the blog list page for Record Club, where when I hover over any part of a blog post card with the mouse pointer, it is clickable.](/day-88-record-club/record-club-blog.gif)

After some inspecting and researching, I found out how this can be achieved with an `::after` pseudo element. I won’t go into detail here—maybe I should in a technical post—but in the end, this is how the Dashify blog page looked:

![GIF of the blog list page for Dashify, with the mouse hovering over different parts of a blog card to show that any part of it is clickable despite the anchor tag being around the heading text only.](/day-88-record-club/dashify-blog.gif)

I also touched up the article template, making the column narrower and text larger for a more comfortable reading experience.

The last thing I did today was write up an article about the WordPress Playground, a neat tool from the official WordPress team that I found as an alternative to InstaWP. It’s not directly related to WooCommerce, so I don’t know how much it will help the right audience discover Dashify, but it was a piece of knowledge I couldn’t save to myself.
