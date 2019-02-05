# Journal

_Journal_ is a minimalist theme for [Hugo](http://gohugo.io).

It focuses on improving reading experience with high contrast colors and no fancy effect.

Demo is available [here](https://damiencaselli.github.io/hugo-journal-demo/).

## Installation

Please refer to the [Hugo documentation](http://gohugo.io/themes/installing/).

### Customize styles

sass is required to build the theme css file. If [bundler](http://bundler.io/) is installed on your system:

```bash
bundle install

# test your changes
scss-lint scss/journal.scss

# build stylesheet
sass --no-source-map --style=compressed scss/journal.scss static/css/journal.css
```
