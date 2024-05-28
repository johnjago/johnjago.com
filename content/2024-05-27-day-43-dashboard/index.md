+++
title = 'Day 43: Creating a dashboard with Laravel Breeze and Cashier'
slug = 'day-43-dashboard'
date = 2024-05-27T12:52:13-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

The next step for the Dashify WordPress plugin is to create paid version of the plugin, which requires that I make a dashboard where people can buy the paid version, manage their subscription, and all that good stuff.

I was a little worried about how much time this part would take because it involves writing a lot of code to handle accounts, payments, license keys, and downloading of the paid plugin. Not to mention the dashboard UI itself.

However, I found something that almost feels like cheating.

I decided to make the dashboard app using the Laravel PHP framework because I used it years ago at a job and loved it. It’s like Ruby on Rails, but for PHP—and in a lot of ways, it’s ahead of Ruby on Rails.

Little did I know that since my first experience with Laravel years ago, they’ve created starter kits that handle essentially everything around dashboards, accounts, and payments. In a single command, I had a complete dashboard skeleton with authentication, password resets, and everything else I might have spent time coding myself. With another command, and some small modifications to the codebase, I added Laravel Cashier which abstracts away all the code for Stripe payments and subscriptions. It handles webhooks, creates database tables for syncing Stripe data with application data, and adds methods for doing all the essential things the Stripe API allows you to do.

Here’s an example of how easy it is to create a subscription for a user. The user model already exists in a default Laravel app. This is the only code needed to create a Stripe Checkout page for a subscription, with some optional parameters that I added.

```php
user()
    ->newSubscription('default')
    ->price([
        'price' => env('STRIPE_DASHIFY_PRO_PRICE'),
        'quantity' => 1,
        'adjustable_quantity' => [
            'enabled' => true,
            'minimum' => 1,
        ],
    ])
    ->checkout([
        'success_url' => route('dashboard'),
        'cancel_url' => route('dashboard'),
    ]);
```

Here’s what the dashboard looks like so far for a logged in user!

![Screenshot of my recent work on the Dashify dashboard where people will purchase and manage their subscription from. The screenshot shows a navigation bar, and a mostly empty page with a small rectangle with some text and a button to manage the subscription.](/day-43-dashboard/dashboard.png)

I’ve still got the paid plugin download and licensing system to create, but it’s amazing that the basic dashboard, account system, and payment flow could be completed in less than 8 hours.

Laravel and the team behind it is great.
