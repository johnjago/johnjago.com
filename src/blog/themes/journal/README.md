# Journal

_Journal_ is a minimalist theme for [Hugo](http://gohugo.io).

It focuses on improving reading experience with high contrast colors and no fancy effect.

Demo is available [here](https://damiencaselli.github.io/hugo-journal-demo/).

## Installation

Please refer to the [Hugo documentation](http://gohugo.io/themes/installing/).

## Configuration

A few parameters should be adjusted in the site config:

```toml
[params]
  description = "Blog meta description."
  githubUsername = "your_gh_username"
  twitterUsername = "your_twitter_handle"
  tagline = "Blog tagline. Shown under index title."
[params.work]
  jobTitle = "occupation"
  company = "the company"
  companyUrl = "https://the.company.url/"
[params.gpg]
  key = "0x1111111111111111"
  fingerprint = "0000 0000 0000 0000 0000  0000 0000 0000 0000 0000"
  link = "https://pgp.mit.edu/pks/lookup?op=get&search=0x1111111111111111"
```

### Customize styles

sass is required to build the theme css file. If [bundler](http://bundler.io/) is installed on your system:

```bash
bundle install

# test your changes
scss-lint scss/journal.scss

# build stylesheet
sass --no-source-map --style=compressed scss/journal.scss static/css/journal.css
```
