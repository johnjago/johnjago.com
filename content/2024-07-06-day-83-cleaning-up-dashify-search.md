+++
title = 'Day 83: Cleaning up the code for Dashify Search'
slug = 'day-83-cleaning-up-dashify-search'
date = 2024-07-06T14:18:14-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

I decided to release Dashify Search earlier than planned by shipping only the ability to search WooCommerce orders by ID. Yes, I could have spent another day adding the ability to search orders by customer name, but searching by ID from anywhere in the WordPress dashboard already provides value—so let’s ship it.

I spent time today cleaning up the code, which tends to get messy while I’m trying different things. Sometimes after writing one implementation, I’ll discover a safer or cleaner way to write the code, so I’ll try that out and comment out the older code. This may happen several times over, in large and small sections of code. I do this because if I realize what I’m doing is not going to work out, I can simply delete the code and uncomment the previous iteration of the solution. I can also look at the previous iteration to gets snippets from it.

All that needed to be cleaned up since I decided to release what I have.
