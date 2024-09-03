---
title: "First impressions of Framer from a developer’s perspective"
slug: "framer"
date: 2024-03-10T18:07:18-05:00
location: "Waukee, Iowa"
type: "post"
category: "work-journal"
draft: false
---

Are you a developer thinking about using Framer to quickly build a marketing website, but not sure if it would really save time?

This past week, I started making a website for [Dashify](https://wordpress.org/plugins/dashify/) with Framer, a no-code website builder, but I’m abandoning it in favor of plain HTML/CSS/JS.

![Screenshot of me building Dashify’s website in Framer.](/framer/framer.png)

I tried Framer because I read someone’s short [reflection](https://senja.io/blog/from-0-to-300-customers-12-mistakes-we-made#4.-coding-our-marketing-site-from-scratch) of coding a marketing site from scratch versus building it with Framer, and I was convinced.

## The bad

I’ll start with the negatives I experienced with Framer, since these all added to my frustration and eventually made me stop using it.

This is not to say that Framer is a bad product—there are many good things about Framer, which I’ll go over later in this post.

### Not saving changes

The right sidebar, where you configure the selected element, often didn’t save the action I just performed. For example, I’d add a link only to click away and see that it’s gone.

Obviously, this is something the Framer team could fix, but it delayed me unnecessarily.

### Headings not resizing

I started with a default component, a section of images with headings next to them, only to have the headings not respond to my attempts to change their size. I had to delete and recreate the headings, after which they would resize perfectly.

### Invisible component

Perhaps the most frustrating was an invisible component, which after much tinkering, I couldn’t figure out why it was invisible.

![Screenshot of Framer, showing a component that is supposedly visible, but alas is nowhere to be seen.](/framer/invisible.png)

I tried everything. Visibility settings, bring to front, send to back, moving the layers, adjusting the size, resetting it to defaults, adding color. Nothing worked to make it appear any different than the screenshot above.

Maybe it was my mistake not seeing some setting, but if it’s that hard to find, I’ll likely spend more time fiddling around than I would actually writing CSS.

### Hard to find actions

I accidentally added a maximum width, and fumbled around for a while, unable to remove it.

![Screenshot of an element’s size settings in the Framer sidebar. There’s no obvious sign of how to delete the max width.](/framer/max-width.png)

It turns out it can be removed through right-clicking, which isn’t immediately obvious.

![Screenshot of the size settings after right-clicking on the max width field, showing a context menu with the option to delete the max width.](/framer/max-width-delete.png)

Small frustrations like this added to an increasingly poor experience.

### Cost

To have more than two static pages, Framer would cost at least $20 per month, more if I reach one of the limits for bandwidth, visitors, or something else.

Hosting a static site I build myself in the free tier of the many static site hosting platforms would be free or cost pennies.

### Platform stability

While doing research on Framer’s history, I discovered that Framer wasn’t a no-code website builder at first; it was prototyping tool. This is important to consider, because a website in HTML/CSS/JS is portable and will work in ten years without modification. On the other hand, who knows where Framer might be in ten years, if it exists at all.

Here’s a look at Framer in 2019:

![Framer’s website in 2019, showing that it was a prototyping tool and not a website publishing platform.](/framer/framer-2019.png)

## The good

- The speed at which you can make a professional site impressed me, if you don’t count time spent on random glitches.
- The built-in effects give the site a polished feeling.
- It feels like Figma, which is good because it’s familiar to the type of people who would be using it.
- Framer compresses concepts in web design, especially those relevant to marketing websites—for example, a “stack” of elements. This frees you from understanding the different ways to create a stack of things in CSS. (Though having CSS knowledge helps with understanding all the adjustments you can make to an element.)
- With Framer, you don’t have to manage hosting. The versioning and deployment is smooth and quick. No complaints here.
- HTML tags relevant to SEO, especially for blog posts, are out of mind—all you need to do is fill in the information.

## Who is Framer for?

If you’re a company making a marketing website, where cost is not an issue, and there are non-developers on your team who will make minor edits or publish content on the site, Framer is a good choice.

## Why Framer is not for us

Our site only needs to

- have static, informational pages about our product, and
- have blog posts (also static pages) for content marketing.

Everyone on the team knows web development, so there’s no hassle in making minor edits.

It’s not worth spending more money than necessary to host these static pages, especially since we’re making $0 at the moment.

Lastly, time saved isn’t an issue, since the time I’ve spent in Framer is the same time I would have spent in HTML, as the site is just text and images with a certain layout.
