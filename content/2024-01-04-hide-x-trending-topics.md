---
title: "Hide trending topics on X with uBlock Origin"
date: 2024-01-04T15:56:55-06:00
type: "post"
category: "technical"
slug: "hide-x-trending-topics"
draft: false
---

You can hide the “What’s happening” trending topics on Twitter with an extension called [uBlock Origin](https://ublockorigin.com/) and a small snippet.

Unlike other extensions that hide it for you or allow you to pick parts of the page to hide, this method is guaranteed to work. This is because the other extensions have a hard time managing the automatically generated code for sites like Twitter.

After installing uBlock Origin, click its icon in the toolbar and open the dashboard with the gear icon.

Switch to the **My filters** tab and add the following snippet:

```
! Hide trending topics on X/Twitter
twitter.com##[aria-label="Timeline: Trending now"]
```

Click **Apply changes**. Refresh or open Twitter, and the trending topics should be hidden.
