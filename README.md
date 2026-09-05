# [johnjago.com](https://johnjago.com)

My personal website! A home for my writing and a history of projects I’ve
worked on.

## Serving the site locally

To serve the site locally for creating and editing content:

```sh
make
```

or

```sh
make serve
```

(plain `make` just runs the first command which is `serve`)

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
