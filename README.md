# [johnjago.com](https://johnjago.com)

My personal website! A home for my writing and a history of projects I’ve
worked on.

## Colophon

This is a static site generated with [Hugo](https://gohugo.io/), styled with
[Tailwind CSS](https://tailwindcss.com/), hosted on
[DigitalOcean](https://www.digitalocean.com/), and set in Source Sans 3.

## Serving the site locally

To serve the site locally for creating and editing content:

```sh
make
```

or

```sh
make write
```

(plain `make` just runs the first command which is `write`)

## Development

First time:

```sh
npm install
```

Then:

```sh
make dev
```

This will watch for CSS changes and rebuild with Tailwind CSS, in addition to
serving the site locally.
