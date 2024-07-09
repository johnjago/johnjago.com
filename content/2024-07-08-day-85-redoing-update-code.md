+++
title = 'Day 85: Redoing Dashify Pro update code'
slug = 'day-85-redoing-update-code'
date = 2024-07-08T14:24:53-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

After a while working in a particular software domain, it becomes clear whether something was designed or whether it came to be through a process of evolution.

I’m thinking the WordPress plugin updating system is the latter.

A plugin ecosystem designed from the ground up today might make automatic updates to plugins require only a few lines of code from the plugin developer. [Figma’s plugin system](https://www.figma.com/blog/how-we-built-the-figma-plugin-system/) is a good case study.

As a WordPress plugin developer, it’s confusing where to even start. The closest thing to official documentation that I could find, that describes how as a WordPress plugin developer to provide updates to your plugin not hosted on WordPress.org, is [this announcement](https://make.wordpress.org/core/2021/06/29/introducing-update-uri-plugin-header-in-wordpress-5-8/).

At first, I followed [this guide](https://macarthur.me/posts/serverless-wordpress-plugin-update-server/), which worked well when I tested it.

However, today in another test environment, I came across an error caused by something being a boolean when I wasn’t expecting it to. As is ever so common in WordPress, it crashed the test site.

Not fully understanding why it was a boolean, and not wanting to risk breaking a live site, I went in search of another solution and [found one](https://wordpress.stackexchange.com/a/404656) based on the announcement post I mentioned earlier. This code was easy to follow and had less going on, which meant fewer chances that something breaks. I also found [a blog post](https://ryansechrest.com/2024/04/how-to-enable-wordpress-to-update-your-custom-plugin-hosted-on-github/), written only a couple months ago, that went into detail explaining this plugin update mechanism. I’m very grateful this person took the time to write out the explanation. It really did help solidify my understanding.

After this research, I replaced my initial Dashify Pro update code with the newer implementation, and it worked well in my testing environment.
