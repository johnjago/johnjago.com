+++
title = 'Day 69: Restoring functionality, continued'
slug = 'day-69-restoring-functionality-continued'
date = 2024-06-22T14:09:33-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

I continued work on [restoring the ability to move panels](/day-68-restoring-functionality/) today.

There are quite a lot of things to do for something that, on the surface, seems trivial:

- Remove all JavaScript that moves the panels, ensuring that there is no downstream JavaScript that depends on the panel-moving JavaScript.
- Migrate older Dashify installations to the new option location.
- Set the default positions when Dashify is activated for the first time.
- Restore the default Dashify positions when it’s turned on after being turned off.
- Restore the WooCommerce defaults when Dashify is removed or turned off.
- Write a function that can be used in the setting and restoration of the options that handles all cases. The positions are saved as an associative array, and each value in that array is a comma separated string, so I first have to convert the string into an array, move things around, and then recombine the array into the string of comma separated values.
- I have to consider several variations of the order view: HPOS and non-HPOS, regular and subscription.
