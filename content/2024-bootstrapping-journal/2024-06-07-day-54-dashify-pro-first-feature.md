+++
title = 'Day 54: Dashify Pro’s first feature'
url = 'day-54-dashify-pro-first-feature'
date = 2024-06-07T16:17:42-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

After some back and forth in my mind, I settled on Dashify Pro’s first feature being something smaller and easier to implement than what I previously imagined it would be.

The feature is the ability to sort items in the order view by SKU, which I learned from a cold email[^1] would be helpful for merchants who have physical inventory that they walk through to pack orders. Often, they organize their physical inventory by SKU, or at least that one merchant did, so it helps to be able to walk through and pick up items in SKU order.

[^1]: I wrote about this and other cold emails at the beginning of this series. Maybe this little bit of information I got from one of them finally has a chance to pay off.

To implement it, at first I thought of adding a bunch of custom JavaScript on top of the order page, but I wanted to get it done in one day (today), so I decided on creating a separate column for the SKU with some WordPress hooks—essentially just moving it in the UI from under the product title to a column that’s to the right of the product title. The best part is that these columns already sort when clicked, and this built-in sorting handles SKUs with both numbers and letters. Only about 50 lines of code were required to implement this.

Nothing too spectacular of a feature—my goal was to get something small in the Pro version so that I could get it soft-launched, getting the infrastructure part out of the way before I begin on a major Pro feature.

Lastly, I began work on a settings page in the Dashify Pro plugin where people will enter their license key.
