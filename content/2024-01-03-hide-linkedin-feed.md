---
title: "Hide the LinkedIn news feed with uBlock Origin"
date: 2024-01-03T23:54:29-06:00
type: "post"
category: "technical"
slug: "hide-linkedin-feed"
draft: false
---

You can block the LinkedIn news feed with a browser extension called [uBlock Origin](https://ublockorigin.com/) and one small snippet.

Unlike other Chrome, Firefox, and Safari extensions made specifically for blocking news feeds, this one is free and will always work.

After installing, click the uBlock Origin icon in the toolbar, and then click the gear icon to open the dashboard. Go to **My filters** and add the following line:

```
www.linkedin.com##[aria-label^="Main Feed"]
```

Click **Apply changes**.

Open or refresh LinkedIn—the home page should no longer show the main feed.

## Hide the LinkedIn News box

You can also hide the small news feed box with

```
www.linkedin.com###feed-news-module
```

## Not working?

If the above isn’t working, [let me know](https://johnjago.com/hi/#get-in-touch) and I’ll update this page.
