+++
title = 'Day 75: The first major Dashify Pro feature'
url = 'day-75-dashify-pro-first-major-feature'
date = 2024-06-28T18:54:09-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

I began work on the first major feature for Dashify Pro: a search bar in the WordPress admin navigation bar from which a merchant can search for an order by name, number, or other criteria.

Later, this search will expand to not just orders, but customers, products, settings, and anything else on the store.

But for now, the MVP of the search is focused on searching orders. I think it’s important for me to constantly keep this in mind and keep scoping down projects to the smallest piece that provides value.

I’m aiming to make it really sleek: as you type, it updates the search results, and the search results are presented in a good UI. Sounds like what you would expected out of modern apps, but in WordPress, and especially in the WordPress admin, this kind of sleek UI is hard to come by. It’ll be kind of like the “command palette” that’s common in a lot of desktop apps these days, especially developer-focused apps. However, I’m also taking inspiration from the search in Shopify which operates similarly, so I’m not just throwing a developer UI at everyone because I like it.

I’m really excited for this one—it’s something I would use myself to jump to particular test orders or, later, WooCommerce settings which I toggle on and off during development of Dashify. I’ve also read a post from ecommerce development agencies about their clients being confused where to find orders in the WooCommerce dashboard—with this global search bar, merchants will have an easy time finding orders.
