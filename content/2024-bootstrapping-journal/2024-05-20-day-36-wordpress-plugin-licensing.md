+++
title = 'Day 36: How should I implement license keys for my WordPress plugin?'
url = 'day-36-wordpress-plugin-licensing'
date = 2024-05-20T16:19:06-05:00
location = 'Waukee, Iowa'
type = 'post'
series = 'bootstrapping-journal-2024'
+++

Previously, I created a WordPress plugin and implemented a system for licensing the paid version, a system which did not work well. Here’s what I learned from that, and how I will take those learning to develop a licensing system for a new plugin I’m developing.

The previous plugin worked like this: someone downloaded the free version of the plugin, and if they wanted to upgrade, they clicked an “upgrade” button in the plugin, which would take them to a Stripe Checkout page. After paying, they’d be redirected back to the plugin settings WordPress dashboard, with the premium features unlocked. The upgraded plugin, however, was tied to the particular site it was installed on. If someone wanted to move the premium version of the plugin over to another site, it would require manual intervention from our support team.

As it turns out, this happened A LOT. It one of the most common support queries.

## The workflow we didn’t know about

This is because a common workflow for people installing WordPress plugins is to first install them on a local development or staging site, and then after everything looks good, install the plugin on their production site. People would upgrade the plugin while it was on a staging site and then be confused about how to transfer the license to the production site, which we had no mechanism for.

There was no explicit license key that the user would see throughout the process of upgrading the plugin, so they couldn’t copy the key over themselves.

## What I plan to do for Dashify

I want to design something that’s simple yet flexible, something that should work for the workflow above and others that I’m not thinking of.

What I’m thinking is:

- User wants to upgrade plugin. They click a link inside the WordPress dashboard which takes them to our website, where they create an account and pay.
- They get a license key which they can copy into the settings of the plugin in WordPress.
- Only one instance of the license can be active at the same time.
- One exception to the above is a license which is entered on a known staging or local domain. It will allow multiple of those to be active, along with one production domain.
- They can purchase additional licenses in bulk or as needed from a portal on the website where they manage the licenses.
- A free trial for a newly activated license, or perhaps per account.

Clearly, there are many possibilities in the above, and the scope could explode quickly, so I need to detail out what exactly is the minimum required to implement this, and how the design can facilitate additional license management features later on.
