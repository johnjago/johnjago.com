---
title: "Clojure vs Go: Making a spell checker"
date: 2021-06-06
type: "post"
category: "technical"
slug: "clojure-vs-go"
draft: false
---

In some ways, Clojure and Go are polar opposites. One is dynamically typed while
the other is statically typed. One is functional while the other is imperative.
One is made by people who tolerate Java, and one is made by people who hate
Java.

After making a simple [spell checker using
Clojure](https://github.com/johnjago/spellchecker), I thought it would be
interesting to implement the same program in Go and see how much more or less
verbose it is, as well as note down my reactions to how well the features of
each language are suited for this problem.

Even before writing the code, I had a feeling that Clojure would be less verbose
than Go due to their respective reputations. Clojure, as with many Lisps, has a
minimal syntax consisting of, according to some people, way too many
parentheses. It also can use Java's standard library, which means that almost
anything you'd want to do is only a method call away, like checking if a number
is [probably a prime
number](https://docs.oracle.com/en/java/javase/16/docs/api/java.base/java/math/BigInteger.html#isProbablePrime(int)).

On the other hand, Go's [lack of generics](https://blog.golang.org/why-generics)
(until recently) had resulted in a lot of copy pasting, code generation, and
other techniques that contributed to rather verbose code. Now that the [proposal
to add generics](https://github.com/golang/go/issues/43651) via type parameters
has been accepted, this will be less of an issue. Go is also infamous for its
error handling.

```
if err != nil {
    // handle the error
}
```

To control some of this verbosity, I've often seen, and have done myself,
something like the following.

```
func check(e error) {
    if e != nil {
        log.Fatal("Error:", e)
    }
}
```

This reduces the error check to a single line if all errors can be handled in
the same way.

```
check(err)
```

That's how I felt going in. The Clojure version would be short and sweet, and
the Go version would have me banging my head against the wall as I try to do
something that should be trivial.

Here are my thoughts on the Clojure version. I used Leiningen to scaffold the
project. It created the usual `src` and `test` directories that anyone who has
programmed in Java will recognize. This is because the most popular
implementation of Clojure runs on the Java Virtual Machine (JVM), and I suppose
Leiningen made a good choice here to follow conventions. It certainly keeps
everything organized for you, even creating a `doc` directory.

I'll highlight a couple things here, but you can [browse the
code](https://github.com/johnjago/spellchecker/blob/main/src/spellchecker/core.clj)
if you wish.

Clojure allows you to do a lot with very little. It abstracts away many details.
Here's how to read the contents of a file, split it by newlines, trim leading
and trailing whitespace from each string, and create a set of the strings to
remove duplicates. As a bonus, I also give the resulting value a name, `words`.

```
(def words
  (set (map
         str/trim
         (str/split-lines (slurp "resources/en.txt")))))
```

Here is how the Go version looks.

```
func words() []string {
    content, err := ioutil.ReadFile("en.txt")
    if err != nil {
        log.Fatal(err)
    }
    return set(Map(strings.Split(string(content), "\n"), strings.TrimSpace))
}
```

Not too bad, but those few lines are not the whole story.

One thing to note is that I tried to make the [Go spell
checker](https://github.com/johnjago/spella/blob/main/main.go) be an exact copy
of the Clojure version, with the same functions and same overall structure. It's
probably not idiomatic, so the end result is a lot more verbose than it should
be. To copy the Clojure version down to the function, I had to implement `Map`
(the functional programming map, not the data structure, which is why I had to
use an uppercase letter so my `Map` wouldn't conflict with the data structure
`map`) and `set`.

Here's the implementation of `Map`.

```
// Map applies the given function to each string in the slice
func Map(vs []string, f func(string) string) []string {
    vsm := make([]string, len(vs))
    for i, v := range vs {
        vsm[i] = f(v)
    }
    return vsm
}
```

And here's `set`.

```
// set removes duplicates from a slice of strings
func set(strings []string) []string {
    set := make(map[string]bool)
    for _, s := range strings {
        set[s] = true
    }
    result := make([]string, 0)
    for k := range set {
        result = append(result, k)
    }
    return result
}
```

Lots of code, right? Especially when compared to Clojure. However, as I said,
this way is not idiomatic and I could have looped over the slice instead of
creating the `Map` function. But removing duplicates is about as short as it can
get without becoming unreadable.

This doesn't make Go worse. There are tradeoffs that you can almost *feel*. Go
feels fast in certain areas, like compilation and running the program, and part
of the reason for that is also why you also have to write more code by hand. On
my machine, there is a noticeable pause before I get the answer from the Clojure
spell checker.

```
$ time lein run wrongg
Did you mean wrong ?

real    0m5.286s
user    0m6.384s
sys     0m0.383s
```

Compare this with Go. Here I don't even compile beforehand, and it's already
over five times faster.

```
$ time go run main.go wrongg
Did you mean wrong?

real    0m0.743s
user    0m0.830s
sys     0m0.075s
```

Here is how long it takes if I run the compiled binary.

```
$ time ./spella wrongg
Did you mean wrong?

real    0m0.489s
user    0m0.585s
sys     0m0.017s
```

I ran each one several times and the timings were roughly the same.

While writing the Go version, many times the compiler caught syntax and type
errors, which was helpful in terms of productivity.

It was also nice not to worry about formatting or the ordering of imports in Go
because at the end, I ran `go fmt` to clean up the code.

I started writing the Go version and then stopped for a week. When I came back
to it, it was helpful to have the types. I could glance at a function signature
and know what what it does and what it returns. Contrast that to the snippet

```
(defn distance
  [word1 word2]
  (StringUtils/getLevenshteinDistance word1 word2))
```

which, although I can infer that it returns an integer, I have to think about it
for a second. If I'm calling a rather obscure method, I might have to go to its
documentation. The types in the function signatures in Go are not just for type
checking, they are also a form of documentation.

In my experience, static typing really does help catch errors earlier. Many
times while working in large JavaScript projects, I accidentally used a string
as a number at some point, and the error didn't surface until much later,
because it would work…until it didn't.

Here I try to return an `int` in Go where I intend to return a string, and the
code doesn't compile.

```
./main.go:71:9: cannot use 5 (type untyped int) as type string in return argument
```

It feels so much better to catch this error here, and not in production where
customers are using it and are potentially affected by any bugs it may cause.

Clojure has the advantage of being concise, being easy to read once you
understand the syntax, and offering escape hatches to Java. For something small
like this spell checker, it's perfect because you can get it done in 27 lines, 5
of which are blank lines. It's really not that much code, which indicates that
Clojure may be at a good level of abstraction for a problem like this.

Go took 77 lines to accomplish the same, and half my time was spent writing
boilerplate. However, without paying any attention to optimizing the performance
of either program, the Go version ended up being over five times faster.

Making small sample projects like this one when deciding between new programming
languages, frameworks, or other tools doesn't take much time but provides a lot
of value. Every step I took in writing the programs resulted in a lot of
observations, many of which didn't make it into this post. These observations
might be a good representation of the general benefits or drawbacks you'll
encounter using the particular technology on a larger scale, or at you'll have
an idea of what your team will be facing on a daily basis.
