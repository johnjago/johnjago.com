+++
title = 'Day 35: “Trialware is not permitted” meaning in WordPress'
slug = 'day-35-trialware-not-permitted'
date = 2024-05-19T15:38:49-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

As a WordPress developer listing plugins on WordPress.org, you may have come across the guideline that says “Trialware is not permitted.” What does this actually mean?

When I made a WordPress plugin for a previous company I worked at (my first WordPress plugin ever) I knew we had to list it on WordPress.org, the biggest directory of WordPress plugins. However, they have rules about what can be listed there, this trialware guideline being one of them.

The full clause for the guideline is

> Plugins may not contain functionality that is restricted or locked, only to be made available by payment or upgrade. Functionality may not be disabled after a trial period or quota is met. In addition, plugins that provide sandbox only access to APIs and services are also trial, or test, plugins and not permitted.
> 
> Paid functionality in services is permitted (see guideline 6: serviceware), provided all the code inside a plugin is fully available. We recommend the use of add-on plugins, hosted outside of WordPress.org, in order to exclude the premium code. Situations where a plugin is intended as a developer tool only will be reviewed on a case by case basis.
> 
> Attempting to upsell the user on ad-hoc products and features is acceptable, provided it falls within bounds of guideline 11 (hijacking the admin experience).

Two lines are unclear.

> Plugins may not contain functionality that is restricted or locked, only to be made available by payment or upgrade.

Does this mean that *some*, but not all, functionality can be restricted? Or is it talking about a plugin whose entire functionality is behind a paywall? The wording can be interpreted both ways.

The other ambiguous line is

> We recommend the use of add-on plugins, hosted outside of WordPress.org, in order to exclude the premium code.

The word “recommend” does not mean require. It seems acceptable then that partial functionality within a plugin can be behind a paywall, and there is no requirement to implement a separate version of the plugin to deliver the paid features.

## What’s the intention of this guideline?

When there’s ambiguity in words, we should look to the spirit of rules for interpretation. It’s reasonable to think that on WordPress.org, they want people to download plugins and make some use of them. They don’t want people to download a plugin just to find out they have to pay to use it, which is annoying to the user.

With this intention, partial functionality locked behind a paywall in the plugin listed on WordPress.org would be okay as long as the free part is completely free and not a free trial. It would also be okay to keep all the paid code in the same plugin and not develop an add-on plugin, though that makes it easier for someone to “steal” the premium plugin.

## What’s best for the plugin developer?

I’m writing this because I’m adding a paid tier to Dashify, an extension for WooCommerce that I’m creating, and I’m considering how to implement the paywall.

One option is to keep all the code together, in the same plugin on WordPress.org, and add an “upgrade” button which allows someone to make an account/payment to unlock the paid functionality. Once the account is upgraded, the paid code paths are unlocked.

The biggest downside of this is that, depending on how the code is structured, it’s very easy to go in and remove the checks for the paid version to get its functionality without paying. Someone might have to do this for every update, but it’s doable. The developer runs the risk of people not paying for the paid plugin. There is no effective method to lock users out.[^1]

[^1]: This makes me a little jealous of people making SaaS apps, where it’s trivial to lock someone out of paid functionality if they don’t pay.

The other option, which mostly solves this problem, is developing an add-on plugin and the related infrastructure (to provide plugin updates, for example) and placing all the paid code in there. The user then downloads this from the plugin’s website. To get the copy of the paid plugin, they would at least have to pay once, and they would have to keep their subscription active to receive future updates. They could unethically share that copy if they wanted to, removing any license key checks, but that copy would be stuck at a particular version. However, this is a lot more friction and should deter most people trying to crack a paid plugin.

## What’s best for the people downloading the plugin?

Since most WordPress plugins have followed the recommendation to create an add-on plugin, it’s what people have come to expect. Upgrading to paid functionality without an add-on plugin might be a little confusing when all the other plugins are upgraded this way.

## What will I do for Dashify?

Since I’ve been through this process before with another plugin, I know that making the add-on plugin will probably be the best choice, since if I don’t and encounter problems later with people stealing the paid features of the plugins, it will be a big operation to migrate everyone over to an add-on plugin. At that point I will also have wasted time developing both versions.
