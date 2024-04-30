+++
title = 'Day 15: Programming better'
slug = 'day-15-programming-better'
date = 2024-04-29T21:21:11-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

It’s been three years since I wrote code where I really needed to think about what abstraction is best and which programming language construct can aid in creating a robust, readable solution—I guess that’s what happens after you hire a team and become a little removed from the action on the ground. 

At the same time, these past three years I’ve had the opportunity to learn from people who are way more skilled at programming than I am, and together we saw which engineering decisions worked out well and which didn’t. Small decisions often proved to be a pain later on—or a massive benefit.

Here’s a simple one that I’m now applying to the code I’m writing for Dashify. Instead of grouping files by technical concepts, resulting in related files spread out between different directories, I’m grouping files by the feature they relate to. The directory structure mirrors what the user gets in terms of features.

This style of organizing files encourages modular code, which in turn has many benefits, such as making it easy to delete a feature without searching for files scattered throughout a codebase. This style also benefits the person working on the code, as typically they’re making a change to a particular area of the product—it’s incredibly convenient to have all the files related to that area of the product easy to find and quickly accessible.

Programming is one of those things you get more intuition for the more time you spend doing it, as with many things in life.
