---
title: "Cache Busting Static Assets in Hugo"
date: 2019-06-11T16:26:49-05:00
type: "post"
slug: "cache-busting-hugo"
draft: false
---

While looking for a way to cache bust static assets in Hugo, I came across
complex Bash and Python scripts that accomplished the task. For simple cache
busting, however, there is no need to rely on external scripts or build
systems. As of v0.43, Hugo has a built-in tool for getting the hash of a file
and inserting the hash into the filename.

I added the following to the template that contains the `<head>` section:

```
{{ $options := (dict "targetPath" "css/journal.css" "outputStyle" "compressed") }}
{{ $styles := resources.Get "scss/journal.scss" | toCSS $options | fingerprint }}
<link rel="stylesheet" href="{{ $styles.Permalink }}" integrity="{{ $styles.Data.Integrity }}">
```

That's it. No need for npm packages, and no need to waste time writing scripts.

There is actually more in this example than necessary for simple cache busting,
but since most people are probably looking to cache bust generated CSS, I
decided to include the additional pieces.

I have a single Sass file which needs to be converted to plain CSS, so I use
the `toCSS` transformation function (an alias of `resources.ToCSS`) on the .scss
file. `$options` is a list of key-value pairs that specifies options for the
conversion from Sass to CSS. I then pipe the result into the `fingerprint`
function, which by default produces a SHA-256 hash. With Hugo Pipes, you
extract the full URL of the resource with `.Permalink`.

The end result:

```
https://johnjago.com/blog/css/journal.28ff9597bd48cd1d12c385c13aba5c051f64fd0251790ce49bb49e8911e9f79d.css
```

Every time I change the CSS and run the Hugo build, `fingerprint` generates a
new hash, so browsers will download the new CSS. If I don't change the CSS,
the hash will be the same, so browsers will load the styles from cache.
This allows for a cache expiry date far in the future while ensuring that
browsers load any changes right away.

If you don't use Sass or want to cache bust images or JavaScript, something like
the following is sufficient.

```
{{ $styles := resources.Get "sccs/journal.scss" | fingerprint }}
<link rel="stylesheet" href="{{ $styles.Permalink }}" integrity="{{ $styles.Data.Integrity }}">
```

If you're wondering what the `integrity` attribute is for, it's a security
feature called Subresource Integrity. If a malicious actor tampers with the
file before it gets to your browser, the hash will not match, and the browser
won't execute the script or apply the stylesheet.

**A final note**: If you plan on using the built-in `toCSS` function, you will need
the extended Hugo binary. On the GitHub releases page, these are the ones that
start with `hugo_extended_`.
