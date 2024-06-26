---
title: "Scraping a website with Node.js and json2csv"
date: 2020-10-10T18:25:48-05:00
type: "post"
category: "technical"
slug: "node-js-json2csv-scraping"
draft: false
---

I was tasked with extracting store data from a website. The goal was to produce
a spreadsheet which contained the contact information of the stores. This
spreadsheet could then be opened in Google Sheets for sharing and editing among
a team.

## Initial approach

Several ideas came to mind, one of which was a brute force way of getting to
the data. There are tools which can automate clicks on a website and
play it back repeatedly. I could perform the actions to extract the data with
my mouse and keyboard on one page, and then have the automation tools do that
for the remainder of the pages. This certainly is better than going through all
922 pages by hand.

This approach might have involved some extra work after copying the data to get
the data to a good storage location outside of the browser.

But let's not think about that too much. We can do even better.

## Looking around

The next question that came to mind: is this a JS app that fetches data from a
server, or is the HTML rendered on the server? In the former case, if the data
comes back from the server in more or less the format that I want, that's all
I need. Just write some JavaScript to fetch the data for all 922 pages, and
supposing it comes back as JSON, convert that to a CSV.

Unfortunately, it wasn't that easy. The HTML was rendered on the server, which
meant I'd have to extract it out of the markup. That's not too bad either.
There are plenty of Node.js libraries out there that can parse HTML source
into a document object model (DOM) that can be traversed to reach the nodes that
contain the text which represents the data I need.

Glancing at the HTML, I noticed something.

```
<a ... data-row_data="{&quot;contact_id&quot;:&quot;136448&quot;,&quot;first_name&quot; ...
```

The page wasn't completely rendered on the server—there was exactly the data I
needed, already in the proper format, all in the `data-row_data` attribute.
This is what I decided to work with.

## Downloading all 922 pages

By hand? No way!

```
const cheerio = require('cheerio');
const fetch = require('node-fetch');
const fs = require('fs');

(async function scrape() {
  for (let i = 1; i <= 922; i++) {
    const response = await fetch(`stuff/?&page=${i}`, {
      "headers": {
        ...
      },
      ...
    });

    const $ = cheerio.load(await response.text());

    try {
      fs.writeFileSync(`./pages/page-${i}.html`, $.html());
      console.log(`Wrote to page ${i}`);
    } catch (err) {
      console.error(err);
    }
  }
})();
```

I had to take the cookies from the browser and send them along with the
request since authentication was required. I've omitted those details in the
above code.

## Sending text through the pipes

This is where Unix utilities come in handy. Alone, they may have a use
here and there, but with problems like this, the real beauty is how you can
compose them in many ways to get the output you want. Start with some text,
pipe it through a few utilities, send it to some other utilities as args, and
out comes the text, transformed in whatever way you need.

First, `grep` all the HTML files for the lines containing the data. Then
replace the HTML `&quot;` entity with real quotes, get rid of duplicates,
and turn the JSON into CSV using `json2csv`, a Node.js package than can run
as a CLI tool.

```
grep -Poh 'data-row_data="\K.*?(?=")' *.html \
| sed -e 's/&quot;/"/g' \
| uniq \
| json2csv --ndjson > ../final.csv
```

Luckily, newline delimited JSON (ndjson) is a thing.

In one line, I went from 922 HTML files to a single CSV containing only the
data I was interested in.
