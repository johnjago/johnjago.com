+++
title = 'Day 24: I did something that didn’t scale'
url = 'day-24-did-not-scale'
date = 2024-05-08T22:39:46-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

Paul Graham, without whom companies like Airbnb and Stripe probably wouldn’t exist, has a famous piece of advice to [do things that don’t scale](https://paulgraham.com/ds.html).

When building a company or product, it means you choose a method of doing something that certainly won’t work at a larger scale—but it will work right now, saving you time from creating a complex system you may not even need—and helping you learn what you *do* need in the process.

When creating the website for Dashify, I made plain HTML files and hosted them on GitHub Pages. Even though it looks like there’s a template for each blog post, it’s actually just the same file copied and edited. There was no templating system—until today.

This worked for a handful of files, but as I start ramping up marketing through the website, I need to write a lot of blog posts. I also want to create a releases page to talk about each new update to Dashify. Making a copy of the last HTML page I worked on and editing it will only get me so far before I start making mistakes, like in trying to search and replace to update the footer across all files, not realizing that one is a little different. Writing articles directly in HTML also is becoming tedious.

That’s why I’m migrating the Dashify website to be built with the Hugo static site generator. Essentially, it’s a templating system plus some more, and all the logic happens at build time. The final output is still a set of HTML files, but when editing or adding content to the site, I’m working in templates or Markdown files. It’s much faster to publish content this way.

By waiting until now to do this, I know exactly what I need out of the templating features and where they will be most useful. I don’t have to guess beforehand what structure I will need. This should take me a little further—until it also does not scale anymore!
