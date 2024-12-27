+++
title = 'Day 80: Searching for WooCommerce orders by ID'
url = 'day-80-searching-woocommerce-orders-by-id'
date = 2024-07-03T14:47:50-05:00
location = 'Waukee, Iowa'
type = 'post'
unlisted = false
draft = false
+++

Dashify Search, as I’ve started to call it, is going well. Merchants can now search WooCommerce orders by the order ID.

![Screenshot of the WordPress admin dashboard with the Dashify Search popup open. A specific ID has been entered into the search, and a single result is showing for that ID. The single result has the order ID, the status, the name of the person who placed the order, and the time the order was placed.](/day-80-searching-woocommerce-orders-by-id/dashify-search-by-id.png)

It shows the result in a format similar to the recent orders, which currently are always shown—each search result has the order ID, status, name, and time displayed. Clicking on a result takes you to the order edit page for that order.

This didn’t take all that long to implement, thanks to a comprehensive [wiki page](https://github.com/woocommerce/woocommerce/wiki/wc_get_orders-and-WC_Order_Query) some of the WooCommerce team has put together on how to programmatically query orders.

Despite being a different way to deliver something that one might argue already exists in WooCommerce, Dashify Search makes a huge difference in how quickly a merchant can get to an order.

WooCommerce is known for being slow, especially if you need a lot of plugins. This is because for each page load, all the code of every plugin runs. This is a bit of a simplification, but it is essentially what happens. Entering a search term for an order in the admin requires a full page load before you see the results, not to mention getting to the order list in the first place. Together, these page loads are a slow process of getting to the order you want to get to.

With Dashify Search after today, if a merchant needs to get to an order, no matter where they are in the admin, they can open Dashify Search, enter an ID, and then get to that result—the only full page load is getting to the desired order, and that’s only if they need to see additional details or modify the order.

I didn’t intend to pitch the product in this work journal, but by writing that, I can see how much of a good thing this can be for merchants.
