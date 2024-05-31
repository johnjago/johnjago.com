+++
title = 'Day 47: I discovered Bruno, an Insomnia and Postman alternative that does not require an account'
slug = 'day-47-bruno'
date = 2024-05-31T18:10:26-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

While working on the Dashify Pro portal today, I needed to test some API routes that I had made in Laravel. I didn’t want to write automated tests—I just wanted to get a feel for whether the design of the routes was intuitive, since I’ll later be calling these routes from the Dashify Pro plugin.

I used Postman a long time ago, and at some point they raised VC money and had a valuation far beyond what a local API calling client should have. No surprise, it grew to become much more than a local API calling client, and employed a lot of dark patterns to lock people in. I don’t think you can use it now without an account? It’s hard to tell honestly, with many changes happening and the original core features being deprecated.

![Screenshot of the Postman docs saying “The Scratch Pad is deprecated and no longer supported. The Scratch Pad is being discontinued and won’t receive any updates, bug fixes, or security updates.”](/day-47-bruno/postman-scratch-pad.png)

But clearly, the stuff they’re removing is stuff people want.

![Screenshot of the Google search results for “postman without account” showing many people asking about it.](/day-47-bruno/postman-without-account.png)

Then people found Insomnia, but unfortunately it followed the same path as Postman after being acquired by Kong, especially last year.

Now there’s [Bruno](https://www.usebruno.com/), which I have a little more [faith in](https://github.com/usebruno/bruno/discussions/269).

I’m happy to see the discussion unfold in the link above. It seems like the author wants to find a sustainable path—a paid version of Bruno—without following the footsteps of Postman and Insomnia. In fact, the author has been contacted by 10 VCs in just a couple months and has rejected all offers.

![Screenshot of the star history for the GitHub repo usebruno/bruno, showing an exponential growth beginning at the start of 2024 and continuing to the present day of May 31, 2024.](/day-47-bruno/bruno-star-history.png)

The above graph is quite telling—Insomnia only has 33K stars at the time of writing. Let’s compare the two.

![Screenshot of the star history for both Bruno and Insomnia. Insomnia has a constant growth since 2018, whereas Bruno has grown to two-thirds the stars of Insomnia in just a handful of months.](/day-47-bruno/star-history.png)

In only a handful of months, Bruno reached two-thirds the number of stars that Insomnia collected after 6 years.

I’ll always support—and create—software that does not do “evil” to the user: no vendor lock-in, provide true value to earn revenue, fair pricing, no dark UX patterns, no rug pulls, and the like.
