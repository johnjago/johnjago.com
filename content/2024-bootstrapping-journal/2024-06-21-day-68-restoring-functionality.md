+++
title = 'Day 68: Restoring functionality that Dashify removed'
url = 'day-68-restoring-functionality'
date = 2024-06-21T14:07:32-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

When I first made the Dashify version of the WooCommerce order view, I removed some functionality on purpose to both simplify the initial code for Dashify, and to give the order view a cleaner look.

However, after some feedback, it’s clear that I’ll need to restore this functionality.

This functionality is the ability to move the panels in the order view to different positions on the screen. There’s no doubt that many merchants have a custom workflow where it makes sense to have some panels closer to the top. For example, if they print a lot of PDF invoices for orders, they’d want that panel to be near the top for easy reach when the order page opens.

What I’m starting today is moving all the panel moving code from the JavaScript side of Dashify to the PHP side—it will no longer move the boxes when running the Dashify JavaScript on every page load. It will instead set the positions by directly manipulating the the saved options in WordPress through PHP.

Not only will this restore the ability to move the panels—it will also run the panel moving code only when necessary: when Dashify is first activated or is turned on after being turned off.
