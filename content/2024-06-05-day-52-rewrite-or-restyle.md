+++
title = 'Day 52: Rewrite or restyle?'
slug = 'day-52-rewrite-or-restyle'
date = 2024-06-05T12:22:38-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

One thing I’ve been pondering for Dashify is whether I should continue to restyle and rearrange existing components in the WooCommerce dashboard, adding new functionality when needed—or whether I should replace existing components with an entirely fresh creation.

## Restyle

For restyling, it can be a lot of CSS and JS added on top of what WooCommerce already has to make things look the way I want. Sometimes, the CSS gets very convoluted, or it’s impossible to achieve something due to the way the HTML is structured. 

However, restyling the existing components makes it trivial to keep up with new features that WooCommerce itself adds. If I notice some new button, it takes a few minutes to add the proper styles.

## Rewrite

If I had rewritten a part of the UI from scratch, then keeping up with new features that WooCommerce adds is not as obvious and takes more time, since I have to then rewrite the new feature, at least the UI part of it, in Dashify itself.

On the flip side, being able to replace say the WooCommerce order notes with a completely custom “timeline” component would make the resulting code much more manageable and flexible. I could make the design into anything I imagine, not limited by how WooCommerce renders its HTML.

I’m sure at some point, I’ll encounter something in WooCommerce that’s not worth the effort to restyle, and then I’ll go for the rewrite. Perhaps the search. Shopify’s search which I’d base Dashify’s on is much more involved than WooCommerce’s, so simple restyling and adding JS on top might not be the most effective approach.
