---
title: "Design your website without CSS"
slug: "no-css"
date: 2024-01-28T20:25:23-06:00
location: "Waukee, Iowa"
type: "post"
category: "technical"
draft: false
---

It all started with me wanting to control my website title in Google.

For some reason, Google occasionally uses “John Jago is” for my site title, and it’s really annoying, because that “is” is so out of place. It’s not supposed to be in the site title, and it looks silly.

![Google search results for the site johnjago.com, with the title showing as “John Jago is” in a couple of them](/no-css/google.png)

It’s no mystery where it’s coming from.

![The top of my homepage, which has the line “John Jago is”](/no-css/homepage.png)

But why is Google grabbing that?

I might be getting ahead of myself, because I haven’t actually seen the results yet, but I have a guess that it’s because the HTML of my page is improper. I opened the Style Editor, cleared out all the styles, just to see what the site is like without them, and it revealed something to me. I had three `<h1>`s, and the title of the page wasn’t one of them.

![My homepage, with all the styles removed](/no-css/homepage-no-css.png)

A few edits later, it looks like this.

![My homepage after edits to make the heading structure better, with all the styles removed](/no-css/homepage-no-css-revised.png)

That’s better! There is a single `<h1>` that I’m praying to Google will be picked up as the site title. The rest of the headings are `<h2>`, which is also more natural for this page.

These two look different, since the browser styles are showing the markup, but with my CSS styles applied, there is zero difference. I’ve only improved the HTML structure.

Often the main thing we’re doing on a website is reading. When designing websites primarily for reading, it could be worth it to design it without CSS, save for the default browser styles, to see what the structure really looks like, and if there are any flaws.
