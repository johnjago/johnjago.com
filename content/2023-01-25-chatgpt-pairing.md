---
title: "ChatGPT pair programming"
slug: "chatgpt-pairing"
date: 2023-01-25
location: "Ames, Iowa"
type: "post"
category: "technical"
draft: false
---

ChatGPT is a great pair programmer, and I could see similar interfaces to knowledge replacing search engines.

I pushed some commits to GitHub that I wanted to remove, so I asked

> how do i delete the last commit on local and remote

It responded with

> To delete the last commit on both the local and remote repository, you can use the command:
>
> `git reset HEAD~ --hard`
>
> This will reset the local repository to the previous commit, effectively deleting the last commit.
>Then you can use the command:
>
> `git push origin HEAD --force`
>
> This will force push the changes to the remote repository, overwriting the remote commit history.
> Be careful when using this command as it will permanently delete commits and any changes made in those commits.

And it worked perfectly! I also like how it explains what's going on and can explain more if you ask.

It has been known to give wrong answers, but in my anecdotal experience, asking common developer questions like this one, it hasn't given a wrong answer yet.

This kind of interface is much smoother and faster than wading through Google search results and random websites to find the answer.

I would happily pay a monthly subscription for a service like this. No ads, no clutter, just the knowledge you're looking for!
