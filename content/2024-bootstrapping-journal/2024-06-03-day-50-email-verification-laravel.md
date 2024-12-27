+++
title = 'Day 50: Setting up email verification in Laravel (Breeze, Mailpit, and Postmark)'
url = 'day-50-email-verification-laravel'
date = 2024-06-03T13:54:12-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

Once again, I am pleasantly surprised at how Laravel takes care of something which every SaaS application needs—something that turns out to be the same for nearly every application: email verification after the user signs up.

Using the Laravel Breeze starter kit, which comes with all the user account boilerplate already created, all I had to do is have the `User` class implement `MustVerifyEmail` from `use Illuminate\Contracts\Auth\MustVerifyEmail`, and that’s it! I added the `verified` middleware to a couple routes, and I was done.

One nice thing is that I could add the middleware to a route that previously had a redirect, and it will now show the “verify your email” screen if they haven’t verified, and then once they’ve verified, it will continue along the redirect chain.

## Testing emails locally

When I installed Laravel Sail for local development, I chose to keep [Mailpit](https://github.com/axllent/mailpit) in the stack—which was a good idea. Ralph, the author of Mailpit, made an amazing email testing tool. It’s a fake inbox that runs locally and captures all email sent from the application.

## Setting up Postmark for production

Setting up and sending a test production email was also trivial. I created an account with Postmark, choosing it because of its good reputation, added an API key to the `.env` of my application, installed the Postmark driver for Laravel with Composer, and changed one line in the `.env` to say `postmark` instead of `smtp`.

I tried creating an account with my real Dashify email, and sure enough it came through to my real inbox.
