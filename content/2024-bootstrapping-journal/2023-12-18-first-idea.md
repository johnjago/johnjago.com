---
title: "Pausing the first idea, starting another"
url: "first-idea"
date: 2023-12-18T15:40:11-06:00
location: "Waukee, Iowa"
type: "post"
series: "bootstrapping-journal-2024"
---

For a few months, I’ve been slowly working on an idea. Unfortunately and fortunately, it’s time to pivot.

I haven’t been writing about progress on this first idea, as I didn’t have a chance to remake this site into a proper blog and newsletter until recently, so now I’m doing some catch up.

## The problem

At my startup, a recurring problem was that I didn’t have any knowledge about how users configured our WordPress extension’s settings. We had an internal web app that gave us an insider’s look at the usage of our extension, like a timeline of when it was activated and deactivated, for example. This context was extremely valuable in customer support cases to understand the current state of the user.

However, one thing this internal tool lacked was the ability to tell us what settings the users have set. For example, we had a setting for language, but we had no idea how many users had the default setting, how many had changed it to something else, and had we no idea the distribution of choices for that setting. If someone called about a problem with translations, we couldn’t look up to see what their setting was and would have to ask them. We couldn’t make decisions about which languages to stop supporting, because we had no usage information.

Unlike Shopify apps and nearly every other web app, WordPress extension settings are saved in the WordPress site itself, not in your own database. This makes it hard to create an internal dashboard based on a database table of settings, unless we manually add code to save information into our database and keep it in sync, which presents its own problems and hassle.

I always wished there was a settings tracker we could add to our extension, but there was nothing, and so the first idea came to be.

## An idea is born

The idea was to create a JavaScript snippet to track changes on inputs and other form fields, like Heap or the many other product analytics tools, but it would be tailored for the use case of settings. It would have

- a summary of all users’ settings, so you can see what percent of users, for instance, have selected a checkbox to enable a feature
- a look up functionality, to look up a specific user’s settings  to get context when handling a support case
- a history of settings changes per user, so you can identify patterns over time

After a few Figma designs and a skeleton of an app built with Laravel, I reached a flaw in the implementation. Looking back, this could have been identified earlier, but I suppose that’s a lesson learned.

## The major implementation flaw

The flaw? The way I imagined to implement it, by running JavaScript as the user loads settings pages and interacts with them, left a huge gap in tracking for users who don’t open the settings at all, or visit only certain settings pages. The tracking can only start after the snippet is added to the web app, so that potentially leaves out a lot of existing users.

As a result, the summary of settings would only be a sample, not a complete picture across all users. It would skew towards those who interact with settings after the snippet is installed. Yes, it could work if the snippet was there since day one, but that leaves a very small target market to work with.

## What would have to change

To keep this idea going, the likely change in implementation would be to get settings data from an app’s database instead of grabbing it from interactions with form fields. Then, the value proposition would perhaps be an innovative way of querying the database, since we have some constraints on how that data will be used, or it could be the dashboard itself being purpose-built for product and support teams interested in how users configure their apps. It would be like a mix of Heap and Datadog, but for a specific use case.

I think there’s huge value in this, but it’s not something I want to take on at the moment.

## What next?

Recently, the person I’m working with and I came across an idea that’s easier to get off the ground. It already has clear demand, so we’ve decided to shift our focus to it. I’m excited to start this new idea and to write about it in detail soon.
