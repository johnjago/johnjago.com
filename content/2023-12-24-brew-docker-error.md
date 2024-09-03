---
title: "It seems the App source '/Applications/Docker.app' is not there"
slug: "brew-docker-error"
date: 2023-12-24T15:56:38-06:00
location: "Waukee, Iowa"
type: "post"
category: "technical"
draft: false
---

While reinstalling Docker Desktop using Homebrew, I encountered this error:

```
Error: docker: It seems the App source '/Applications/Docker.app' is not there.
```

It turns out I deleted Docker from the Applications directory without realizing I had previously installed it with Homebrew.

To fix this error, I ran

```
brew uninstall --cask docker
brew install --cask docker
```

If you’re wondering what `—cask` is about, it’s how you can download Docker Desktop for Mac, as opposed to just Docker Engine that installs if you run `brew install docker`. Since Docker Engine only runs on Linux, you would need to set up a VM before you can use it. Here are a [couple](https://dhwaneetbhatt.com/blog/run-docker-without-docker-desktop-on-macos/) [of](https://dev.to/elliotalexander/how-to-use-docker-without-docker-desktop-on-macos-217m) [guides](https://github.com/abiosoft/colima) on this, if you’re interested. For most people, however, downloading Docker Desktop through `brew install --cask docker` is a more convenient way to do local development with Docker on Mac.
