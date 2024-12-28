+++
title = 'Double shift for search in VS Code'
slug = 'shift-shift-vs-code'
date = 2024-12-28T10:10:22-06:00
location = 'Waukee, Iowa'
type = 'post'
category = 'technical'
+++

After using IntelliJ IDEA at work, I got used to hitting the shift key twice to
open the search everywhere window.

Since I use VS Code for personal projects, I found that I was starting to hit
shift twice reflexively to bring up the VS Code equivalent of this search
everywhere window, the “Search files by name” window that normally opens with
`ctrl/cmd+p`. I consider this to be equivalent of search everywhere because you
can also search symbols by typing @ and text by typing %.

In your **keybindings.json**, you can add this block to create the shortcut:

```json
{
	"key": "shift shift",
	"command": "workbench.action.quickOpen"
}
```

Adding this won’t remove the default one, so you can use both.

I’m not sure how to add this shortcut through the VS Code settings, as it
doesn’t allow you to enter the same key twice in a row, so editing the
keybindings.json appears to be the only way.

If you’re not sure where to find keybindings.json, here’s how you can open it
(at least on Mac). Go to **Code → Settings → Keyboard Shortcuts**, and once the
tab is open, click the **Open Keyboard Shortcuts (JSON)** icon in the top
right.
