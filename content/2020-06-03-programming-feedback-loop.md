---
title: "Programming’s built-in feedback loop"
date: 2020-06-03T07:50:07-05:00
type: "post"
category: "technical"
slug: "programming-feedback-loop"
draft: false
---

When writing software, it's easy to know when you're doing something wrong.
It's as if the practice of writing code has a built-in feedback loop that will
slow you down and create mistakes when the code is “bad”, and speed you up as
well as prevent mistakes when the code is “good”.

First, let's look at an example of “bad” code.

Suppose you are making some HTTP endpoints using your favorite server language:
Ruby, Python, Go, whatever. These endpoints allow clients to create, update,
delete, and perform other operations on an object. Let's imagine that these objects
represent dogs.

You might have something like this:

```
GET   /api/v1/dogs/
POST  /api/v1/dogs/
GET   /api/v1/dogs/<name>
```

Later on, you find out that you also need to support cats, birds, and fish. The
functionality for each type of animal is 90% the same, so you figure that you
can just copy and paste the code for the dog endpoints and make the necessary
modifications.

A few weeks later, you need to update the way the animal records are saved to
the database. There's a transformation that you must make to the data coming in.
Perhaps you need to concatenate genus and species together to create a new field.

You update this one:

```
POST  /api/v1/dogs/
```

But wait! You also need to change code that handles each of these:

```
POST  /api/v1/cats/
POST  /api/v1/birds/
POST  /api/v1/fish/
```

Not bad, but what if you keep having to make changes to the 90% of code that is
shared between the four? Sometimes you might forget to update one of them,
leaving the endpoints to create inconsistent data. The careless copy and paste
is forcing you to do 300% more work each time you have to make a change. Without
having to do much else other than write the bad code, several different feedback
mechanisms are working to let you know that something is wrong. Over time, you
can recognize this feedback early and start building up an intuition for what
is good code and what is bad code.

On the flip side, positive feedback resulting from good code indicates that
you're doing something right, although it might be more correct to say that it's
an absence of negative feedback.

One example is your code's future extensibility. You might be building some
core functionality that you know will be extended later. If you implement it
without regard to extensibility, others will come knocking at your door when
they have to rewrite a good chunk of your code. If you implement an extensible
solution, nobody will say a word because their additions can be integrated
so flawlessly. With good code, there's less explicit feedback, so you have
to look at the absence of negative feedback, like not having to spend hours
refactoring the code to work with every new feature that comes along.

In this way, software guides its writers towards more maintainable and
extensible code. It's only when you fail to notice that you're doing what I like
to call "preventable work" that you miss the feedback your own software is
giving you.
