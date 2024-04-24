---
title: "JavaScript frameworks from the last decade did not age well"
date: 2020-05-13T19:35:40-05:00
type: "post"
category: "technical"
slug: "maintenance"
draft: false
---

To anyone who has written a software application from scratch and has supported it
for a few years, it shouldn't be a surprise that the maintenance of that software
comes at a cost. This cost needs to be considered when making a decision to
implement a particular solution.

By maintenance, I'm not talking about adding new features. I'm talking about
the chores you *have* to do if you don't want to eventually be faced with the
decision to either leave it as is or kill it.

Let's illustrate this with an example.

Suppose it's late 2010, and you need to build an interactive web UI. Rather than
reinvent the wheel (remember, you're being paid to make a dashboard for the
business, not to invent wheels), you come across a library called Backbone.js.
Hallelujah! You don't have to spend late nights at the office trying to figure
out how to keep the UI in sync with the data. You `npm install` it (just kidding,
npm was only a year old at the time), or more likely you just download some
files from a website.

Fast forward a couple years, and some new frameworks start popping up and gaining
popularity. Because they are supported by big companies who have the resources to
pay people to work on this stuff all day, those frameworks become pretty good.

Five years later, even routine maintenance couldn't save your dashboard UI
written in Backbone.js. At some point, you struggle to find libraries to help
you validate forms or convert currency. At the worst, the maintainer of
Backbone.js may have moved on to other pursuits, meaning all the existing bugs
are more or less yours to fix, or ignore.

Now your colleagues are making dashboards for the business twice as fast as you
are. They're using React and have thousands of libraries at their disposal, which
of course have their own maintenance cost.

You're faced with two choices. You can either accept that your work will take
twice as long because you have to do a lot of things by hand (which will make
your manager suspicious because your colleagues over there are making
dashboards twice as fast!), or you can kill your Backbone.js application for
good and rewrite it in a new framework.

In 2020, the situation is a lot better for JavaScript frameworks. Angular provides
concrete update guides to help you update your application to the latest version.
These little tools make maintenance a breeze. You can select what version you
currently have and which version you wish to upgrade to, and a checklist is
generated to guide you. The React team has a commitment to limit breaking
changes (but not before they raced through sixteen of them!).

Nevertheless, you can't assume that once you rewrite your application in Angular,
everything's going to be fine. They release updates a few times per year, so that
has to be taken into account when estimating the effort it will take to maintain
the application. Because if you let it fall behind, it will end up just like
your Backbone.js app.

If you install a library for everything, be prepared that the library maintainers
may have retired the next time Angular releases a new major version. They're on
a beach in Hawaii, and you're in the office pulling your hair out because the
drag'n'drop file upload library doesn't support the new version of Angular. But
time's passing quick. You don't want to let your Angular app fall behind to the
point where the relevant documentation is hard to find on the website because
the version you're using is so old. This is where software maintenance gets
tricky. You have to decide what path will offer the best results for the least
effort. You could make a pull request to the library, or you could convince the
business that they don't need to drag'n'drop their files. This is where engineering
becomes fun because it's not all just about writing code. Sometimes the solution
may not involve code at all, but rather a conversation.

Some say that the hardest part of doing anything is getting started. Running
`create-react-app` on day one will give you the feeling of making a lot
of progress. But if you're not careful about your decisions, you'll find that
the maintenance of your software will remind you about your bad decisions many
times over. But if you're wise, you'll see these reminders as the best teachers.
