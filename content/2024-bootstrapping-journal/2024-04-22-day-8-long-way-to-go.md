+++
title = 'Day 8: Dashify has a long way to go'
url = 'day-8-long-way-to-go'
date = 2024-04-22T23:47:09-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

As I was tweaking some styles of the WooCommerce order view today, I realized two things.

First, there are many inherent shortcomings of the WooCommerce order UI. Although I would like to see what decisions led to some things being the way they are, many designs in their current form don’t make sense to me.

For example, when manually creating a new order, in the area to add items to the order, the primary button is “Recalculate”, which I’m not even sure what it’s supposed to do. The button to add a product is secondary, and the actual place where you search for products to add is yet in another popup window. Adding an item to an order should be the first thing—it shouldn’t be so hidden.

Seems easy to fix, right? I’ll have to write new components rather than restyling existing ones to achieve this, but it’s doable.

This brings me to my second realization, which is that it may not be worth it for someone to get Dashify just for the redesigned UI. There needs to be more “can’t get this anywhere else” features that are not simply a redesign of how things look and the sequence in which you click things. Dashify only has two of those at the moment, order trend graphs and previous/next order navigation buttons. With enough of those features that really make the dashboard more informative and productive, maybe then it’s worth relearning a new UI? Or should a better UI itself be enough? I’m still not sure where I stand on this.
