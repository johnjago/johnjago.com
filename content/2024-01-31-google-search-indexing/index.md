---
title: "Fixing Google Search only indexing my homepage"
slug: "google-search-indexing"
date: 2024-01-31T14:25:23-06:00
location: "Waukee, Iowa"
type: "post"
category: "technical"
draft: false
---

I’ve owned this domain for over a year now, and I’ve had multiple pages on it for two months, but until yesterday Google was only showing my homepage in the search results. I’d type `site:undo.studio` into Google to see what pages are indexed and only see the homepage.

I then added the site to Google Search Console to see what’s going on, yet it showed the same information. The only indexed page was the homepage. It didn’t say why the other pages weren’t indexed.

I added a sitemap to help it crawl the newly added pages, but even though it said it discovered 20 pages, still nothing else was indexed.

Becoming increasingly frustrated, I thought that perhaps I have to wait a few more months before the other pages show in Google’s search results.

Luckily, I tried something that instantly worked to get those other pages indexed. Okay, maybe not instantly, but in less than a day those new pages appeared in Google.

## What I did to fix it

Before starting this, you’ll need to add your site to Google Search Console.

First, I took the URL I wanted to appear in the search results and pasted it into the “Inspect any URL in…” search bar in Google Search Console.

![Pasting the URL of the page I want indexed into the search bar in Google Search Console](/google-search-indexing/inspect.png)

Then, I clicked “Request indexing”.

![Clicking “Request indexing” when inspecting a URL in Google Search Console](/google-search-indexing/request.png)

These are the ones I requested indexing for just a day earlier. At the time I didn’t know if this would work, but turns out it’s a quick way to get a specific page to be listed in Google.

![My new pages showing as indexed in Google Search Console](/google-search-indexing/results.png)

I’m hoping that in a month or two all new pages will automatically be indexed with the help of the sitemap, but if you’re facing this same problem, this is quick solution for specific pages.
