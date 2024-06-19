---
title: "My Git and other shell aliases"
date: 2021-03-13
type: "post"
category: "technical"
slug: "my-git-and-shell-aliases"
draft: false
---

When engaging in creative work like writing software, it's often the tools that become bottlenecks to productivity if not enough attention is given to them.

You can think of working on a project as a collection of events. Those events each take some amount of time, and some events happen more frequently than others. Throughout the project, these events are spread out from start to finish. The core events are those that contribute directly to the project. If you're writing a blog post, for example, the two big events are thinking through ideas and the physical act of writing. These events may start, stop, and continue many times throughout the process. However, there are other things that just need to be done, and those things come from the tools you're using.

## A simple example

If you're writing in a Markdown editor and need to occasionally preview the article, there may be a menu item in the editor for doing that. The next best option is to memorize the keyboard shortcut for bringing up that preview. That way you can go from writing (with the keyboard) to hitting a certain combination of keys (still on the keyboard) to open the preview. There's no loss of flow from the typing to the opening of the preview. There may even be a shortcut to close the preview.

Such small optimizations may seem trivial, but when your entire job is the production of creative work, it can get annoying to have to lift your hand over to a mouse sitting on the desk, and move it precisely over the menu item that you want to click, click it, then move your hand back to the keyboard. These small optimizations add up and allow you to squeeze a surprising amount of creative work out of a short period of time, simply because your brain is engaged 95% of the time with the creative ideas that you're working with. The other small tasks, which ideally are completed in the fastest way possible (for computer work, often that means keyboard shortcuts), blend into the background of the work. You don't have to think about them.

## My Git and other terminal shortcuts

Over time, I've built up a collection of one or two-letter aliases for the things I do most often in the terminal.

Here are some of them:

```
alias ls='ls -CF --color=auto --group-directories-first'
alias l='ls'
alias la='ls -A'
alias ll='ls -al'
alias h='history'
alias c='clear'
alias e='exit'
alias v='vim'
alias r='ranger'
alias s='slock'
alias d='docker'
alias dc='docker-compose'

# See [alias] section in .gitconfig
for al in `git --list-cmds=alias`; do
    alias g$al="git $al"
done
```

That last one pulls in more aliases from `.gitconfig`:

```
l = log

# Visualize commits and branches
lg = log --graph --decorate --oneline

# Visualize with authors and dates
lga = log --graph --abbrev-commit --decorate --format=format:'%C(auto)%h%C(reset) - %C(green)(%ar)%C(reset) %s [%an]%C(reset)%C(auto)%d%C(reset)'

s = status
a = add -A
c = commit
cm = commit -m
m = commit --amend --verbose
p = push
pu = pull
d = diff
dc = diff --cached
co = checkout
cob = checkout -b
t = tag
su = submodule update --remote --merge

# List branches sorted by last modified
b = "!git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"

# List aliases
la = "!git config -l | grep alias | cut -c 7-"
```

A good question to ask is how effective are these aliases?

With the following, we can see my top forty most used commands.

```
history | awk 'BEGIN {FS="[ \t]+|\\|"} {print $3}' | sort | uniq -c | sort -nr | head -n 40
```

The result is:

```
   6425
   1219 gs
    593 cd
    577 a
    519 b
    475 ls
    380 git
    378 ga
    375 gc
    366 c
    318 ll
    318 gp
    281 gd
    278 npm
    233 dc
    187 r
    158 50
    154 mv
    154 exit
    150 s
    147 10
    141 60
    140 sudo
    139 gl
    130 svn
    128 vim
    120 cat
    119 rm
    118 gpg
    115 -i
    115 cal
    109 run
    108 tm
    108 test
     92 start
     91 70
     90 ..
     88 gpu
     84 ssh
     72 serve
```

The most used ones are from my shortcut collection, so it's working quite well. I'm not too sure what the top one is. Maybe it's pressing enter when there's nothing in the terminal?

You may have noticed that `a` and `b` are not in my list of aliases. Those are actually functions for adjusting `a`udio and `b`acklight.

In IntelliJ, there is a [fun plugin](https://github.com/halirutan/IntelliJ-Key-Promoter-X) that nags you to use the keyboard shortcut if you perform an action without using the shortcut. When I used this at work, it actually helped me memorize and use a lot of shortcuts that I otherwise wouldn't have.

It looks like there has been [some discussion](https://github.com/Microsoft/vscode/issues/26729) for a similar feature in Visual Studio Code, though the API proposal that would allow for such a feature hasn't been accepted yet.

## Compounding results

Typing `g` instead of `git` once doesn't seem like it matters.

However, consider running ten Git commands each day, for about 251 working days in a year.

Without the shortcut, you type a total of 3 × 10 × 251 = **7530 characters**.

With the shortcut, it's 1 × 10 × 251 = **2510 characters**. That's **one third** of the typing, and that's the big idea. Reduce the work that doesn't directly contribute to creative output to a minimum, because even these small inefficiencies add up.
