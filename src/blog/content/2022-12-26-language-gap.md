---
title: "The biggest problem with programming languages"
date: 2022-12-26T09:54:53-06:00
type: "post"
slug: "language-gap"
draft: false
---

It’s easy to describe in spoken language what you want to build. 

“I want a web application where I can upload files…” 

You can describe how it should behave, how it should handle different scenarios, and what other functionality it should have. Taking the idea and building it is not a trivial task. It  requires that you spend time learning how to program and then spend time building it. Why does it have to be that way?

If a person can describe what they want in detail but cannot build it, you could blame the person, but you can also blame the tools. Why don’t the tools allow this? What can we do to bridge this gap?

It’s essentially the question of how do we converge programming languages with languages that people already know, in a way that makes sense.

A few decades ago, programming language research was a hot topic, but today it has been replaced by the new buzz, artificial intelligence and machine learning. However, there remains a huge opportunity in the field of programming languages to make programming as easy as describing what you want. A truly declarative language! And perhaps it may draw from those new fields of research.

It’s an optimization problem. How can the language be specific enough to produce the correct output, but general enough so that anyone can use it? You have a complex system of computers and hardware that software can run on. You don’t want to describe how each of those pieces work to get a fully functioning web application, and luckily today that’s already the case. Nobody is writing web applications in assembly language.

```asm
MOV AL, 61h       ; Load AL with 97 decimal (61 hex)
```

If you had to describe into which processor register to load each piece of data, it would take too much time to write a web application.

C was introduced, and later programming languages like Ruby, and frameworks like Ruby on Rails. With the latter, it is possible to build a fully functioning web application in a matter of minutes. It’s a language at a good level of abstraction (for programmers). It has even created careers for many people. However, it’s still not trivial for anyone to take it up and start writing code that same day, anyone meaning anyone who can describe what they wish to build, a schoolteacher who wants a classroom management system, for example.

When you start using natural language to specify programs, it may take more words to get your idea across, and it opens the door to misinterpretation, which has to be corrected and takes time. Imagine looking at a Ruby on Rails application. Given its current state, dependencies and runtime and all, it should produce exactly the same output to different people. People can’t come up with their own interpretation of how the rendered HTML looks if they are using the same browser. Given the environment, a Ruby on Rails application is a good description of the exact behavior of the program in the context of that environment.

If you are describing your web application using terms like pages and tabs, and describing how uploaded files should be handled, without being detailed about the process by which your concept of pages and tabs are created, by which the uploaded files are handled, that leaves room for interpretation and variation in the end result. You might describe the file uploading application some time later, but your natural language coding tool implements the file saving process in a different but not necessarily better way. In some scenarios, this doesn’t matter, but in others, it gets in the way. It’s simply not as precise.

Many people have used SQL over the past few decades, and it’s a great example of a powerful formal language. Aside from the differences introduced by database vendors, the language is standard, and simple queries are not far off from reading like English. It has enabled millions of people to query and understand raw data, something that would have been impossible with pen and paper.

With Ruby (on Rails) and SQL, it’s possible to go from idea to product in minutes. You can create web applications with Rails, and you can get insights about data with SQL. The gap between idea and product is small.

There are still many gaps to cover, however.

No-code tools have helped in recent years, but there are times when they don’t meet your needs, and you must fall back to writing JavaScript or Python to process data in intermediate steps. What if there weren’t such limitations where you need to fall back to actual programming?

How do we cover those gaps?

Understanding how people think in certain domains, and building domain-specific languages that let them leverage their thinking to turn ideas into tangible output, is a good first step. [Wasp](https://wasp-lang.dev/) is a DSL for describing web applications. Of course, it’s still far from a perfect DSL for web apps and is limited in some respects, but it’s an example of the kind of languages we need to create.

[Imba](https://github.com/imba/imba) is another window into the future. [Their website](https://imba.io/) has an example that illustrates what a good DSL makes possible. It’s a painting app where you can choose brush widths, colors, and resize the canvas. From  this starting point, it’s trivial to expand it with more painting features. They emphasize that all the code seen is all that’s needed.

[Penrose](https://github.com/penrose/penrose) feels like writing English to make diagrams, with all the power of mathematics.

A programming language can even be for [music composition](https://github.com/alda-lang/alda). Here’s a [rationale](https://blog.djy.io/alda-a-manifesto-and-gentle-introduction/) from the author on why it’s better to write this way than to use GUI applications to create sheet music.

A DSL for [Julia](https://julialang.org/) called JuMP can be used to [describe and solve a Sudoku problem](https://jump.dev/JuMP.jl/stable/tutorials/linear/sudoku/). Not that it’s notable to solve Sudoku with a computer, but the example shows how a good domain-specific language can make it trivial to do a certain class of tasks.

OpenAI’s ChatGPT is yet another way to bridge the idea and product gap. Among other things, you can use ChatGPT in the way I described at the beginning of this post. You can literally type that sentence, perhaps adding in what programming language you want it to use, and it will create the source code for a web application that supports file uploading. It starts with the basic code, after which you can keep chatting with it about what features to add. It can’t run the application for you at the moment, but it’s not too hard to imagine an interface that hides away the source code output and has the ability to execute the code it generates.

While not exactly a language, ChatGPT leverages the language the person already knows and programming languages that already exist to provide an interface that allows anyone to code anything.

Problem solved, perhaps?
