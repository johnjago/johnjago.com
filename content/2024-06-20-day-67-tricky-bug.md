+++
title = 'Day 67: Understanding WordPress to fix a tricky bug'
slug = 'day-67-tricky-bug'
date = 2024-06-20T14:06:29-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

I noticed a strange bug in Dashify recently.

In WordPress, the panels on various pages of the dashboard can be moved around, and their positions are saved. This isn’t the case for pages that Dashify restyles (it will be in a few days, though) because I decided to simplify the implementation when first restyling the page, and making them not movable really did simplify it.

However, they should only be not movable when Dashify is on. To my surprise, even after deactivating and removing the Dashify plugin, I could move the panels around, but their new positions wouldn’t save.

It was even stranger because while watching the network request for the saving of the positions, I saw that it returned a 200—so WordPress was telling me that the save was successful, and yet on the next load of the page, the panels were back to their old positions.

After looking through the WordPress source code for how these panels are rendered, I realized what was causing this bug.

WordPress has two functions, `update_user_option` and `update_user_meta`, with the former being a wrapper around the latter. The first one adds a prefix to the option name—that prefix is the “blog prefix”, which I don’t quite know what that is—I decided to stop looking any further as it was clear what caused the bug.

In Dashify, I was using `update_user_option` to reset the positions of the panels when Dashify was turned off, which added prefixed versions of the options.

When the panels are rendered, it first looks for prefixed option names before defaulting to non-prefixed ones.

However, that network request I talked about earlier—digging into that code a little, I saw that it saves the options with `update_user_meta`, which doesn’t add prefixes.

So, when Dashify was turned off, it saved the positions with these “higher priority” prefixed option names, and these were always used over the non-prefixed options, which explains why after removing Dashify, I could see it saving successfully after moving the panels—it was saving into an option name that wasn’t the one being read.

I modified all Dashify code to use `update_user_meta`, which is what WordPress itself uses to save the panel positions, and wrote a migration function to account for everyone using Dashify up until this point who had the option saved the wrong way.
