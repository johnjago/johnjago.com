+++
title = 'Day 64: Search and bulk actions improvements'
url = 'day-64-search-bulk-actions-improvements'
date = 2024-06-17T16:53:43-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

Mostly a heads-down day working on a bug fix and small improvements to what Dashify does with the WooCommerce order list.

The improvements:

- I updated the behavior of the expanding search and filter area to make it more intuitive and more aligned with how Shopify has designed theirs.
- I modified the floating bulk actions to allow other plugins’ bulk actions to appear. This floating button UI will probably break down if a site has a large number of custom bulk actions, as it will cover too much of the table. Interestingly enough, shortly after creating this, modeling it after Shopify, Shopify changed their own UI for bulk actions entirely, making it a sticky bar at the top of the table when one or more orders are selected.
