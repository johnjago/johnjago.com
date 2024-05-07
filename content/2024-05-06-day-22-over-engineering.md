+++
title = 'Day 22: Being mindful of over-engineering'
slug = 'day-22-over-engineering'
date = 2024-05-06T21:27:47-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

As I build Dashify, I have to remind myself that over-engineering a solution only makes failure ever more likely.

Over-engineering is when you build a solution that is more complex than it needs to be. Depending on the context, this could mean different things. For a spaceship carrying people, there is a very high threshold for what is considered over-engineering. For a small product like Dashify, it’s very low.

As I’m making the subscription edit page of WooCommerce Subscriptions look better, I noticed that a lot of the existing code for regular orders can be reused by simply adding a single “or” statement to account for the subscription page, whose elements differ only slightly.

I’m tempted to make the subscription code perfectly modular and separate from the core code, since the plan is to make WooCommerce Subscription support a paid Dashify feature later on, but that will take significantly more time than just adding an “or” statement.

Here’s where the context is important. Early this week, my goal is to be done with WooCommerce Subscriptions support and move on to marketing efforts, to see if I can get to the next milestone of 20+ active installs. In this context, where I’m unsure if I will ever be developing a paid version (in the event I somehow am totally unable to get to 20+ active installs), the “or” statement is the ideal solution. Anything more is over-engineered.
