+++
title = 'Day 84: WordPress.org screenshots and authentication error'
slug = 'day-84-wordpress-org-screenshots-authentication-error'
date = 2024-07-07T14:21:49-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

With Dashify Search ready for release in a new version of Dashify Pro, I began updating marketing materials, focusing on the WordPress.org listing.

After editing other parts of the listing, I noticed the screenshots were getting outdated and so spent some time in Figma creating new ones. Previously, I had before and after screenshots for how WooCommerce looks with and without Dashify, but I decided to remove the before screenshots since people already know what it looks like. By cutting those out, people can see the screenshots that would actually interest them in fewer clicks.

This update to Dashify Pro requires an update to the free version due to a naming conflict, so I prepared an update for the free version, only to encounter this error when trying to commit the updated plugin to WordPress.org:

```
svn: E215004: Authentication failed and interactive prompting is disabled; see the --force-interactive option
svn: E215004: Commit failed (details follow):
svn: E215004: No more credentials or we tried too many times.
Authentication failed
```

I was stuck on this for a while before recalling an email I had received 9 days ago about a [security breach](https://www.wordfence.com/blog/2024/06/developer-accounts-compromised-due-to-credential-reuse-in-wordpress-org-supply-chain-attack/).

> We identified that some plugin authors were reusing passwords exposed in data breaches elsewhere. The compromised accounts were not the result of an exploit on WordPress.org. Instead, the attackers used recycled passwords to add malicious code to a few plugins on the WordPress.org Plugin Directory.

I use strong, random passwords for different sites—the first thing taught about computer security—but this leaves me wondering if it’s one of those things that people don’t realize the importance of until it personally affects them.
