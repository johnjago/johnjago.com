+++
title = 'Day 45: License key generation for my WordPress plugin'
url = 'day-45-wordpress-plugin-license-key-generation'
date = 2024-05-29T20:16:06-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

The next step in building the portal for Dashify Pro is to generate license keys which people can use to activate the paid version of the plugin.

There is nothing too special about this, so I’ll write an outline of how it works so far:

- User decides to purchase Dashify Pro and ends up at the sign up page at account.getdashify.com, either from the free version of the plugin or from the Dashify website.
- They see that it will take two steps on the first screen: account creation and then payment. They create the account (99% of the functionality provided by Laravel Breeze).
- After successful account creation, the user is redirected to a Stripe Checkout page (also made easy with Laravel Cashier) where they can choose the quantity of licenses to purchase and make the payment.
- After payment, they’re redirected to the portal home page where they see a notice about managing their subscription and downloading the paid version of the plugin, with the licenses shown below the notice.
- How I have it set up right now is that whenever the user visits the dashboard, a middleware runs that compares their number of licenses (a model in this application, with the relation that one user can have many licenses) to the quantity of the subscription. If it’s less than the quantity of the subscription, it creates that number of licenses so they’re equal. For license removals, which I’ll work on in a day or two, I’ve not quite decided how to handle it yet—I don’t want there to be any confusing paths with the quantity being adjustable in their Stripe-hosted subscription portal.
- The internal ID of the license is also the the key, a [ULID](https://github.com/ulid/spec). I probably need to see if the beginning of these IDs can be randomized, as it could be confusing for a user to have many license keys that are start with the same characters. It would be hard to tell them apart at a glance.

In a day or two when I work on the plugin side of this, I’ll write a post on how these licenses will be entered into the plugin and how the validation will occur.
