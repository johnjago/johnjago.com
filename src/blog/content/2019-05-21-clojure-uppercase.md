---
title: "Clojure: Checking for Uppercase Letters in a String"
date: 2019-05-21
type: "post"
slug: "clojure-uppercase"
draft: false
---

Clojure is a neat language of the Lisp family that has strong support for
functional programming. In many situations, this style of programming results
in code that is easier to read and reason about.

In this example, we will check if there is an uppercase letter
in a string using Clojure. Then we will compare it to a Java program
that performs the same task.

First, we define a function using `defn`.

```
(defn )
```

This won't get us very far. In fact, it will produce a syntax error. We need
to name the function, give it some parameters, and write a function body.

```
(defn has-uppercase? [str]
  (println str))
```

`has-uppercase?` is the name of the function, `str` is the name of the
parameter, and `(println str)` is the body. Right now, it prints the
argument, which is not quite what we want, but we're getting close.

In the function body, we can instead use the `some` function, which takes
a predicate and a collection and returns true when an item in the collection
satisfies the predicate.

The predicate is `#(Character/isUpperCase %)`. For example,
`(#(Character/isUpperCase \A))` evaluates to true.

Putting the function body together, we have:

```
(some #(Character/isUpperCase %) str)
```

The `%` sign is replaced with each letter of `str`, one at a time, as it runs.

The final result:

```
(defn has-uppercase? [str]
  (some #(Character/isUpperCase %) str))

(print (has-uppercase? "abc")) ; nil - all characters checked without finding uppercase
(newline)
(print (has-uppercase? "aBc")) ; true - it stops when it finds B
(newline)
```

Notice that the function itself is only two lines, and it's easy to read. The
function body reads like an English sentence: "some character is uppercase".
For comparison, here is a straightforward implementation in Java along with a
main method to try out the hasUpperCase method.

```
public class HasUpperCaseExample {
  public static void main(String[] args) {
    System.out.println(hasUpperCase("abc"));
    System.out.println(hasUpperCase("aBC"));
  }
  
  public static boolean hasUpperCase(String str) {
    for (int i = 0; i < str.length(); i++) {
      if (Character.isUpperCase(str.charAt(i))) {
        return true;
      }
    }
    return false;
  }
}
```

There's lots of extra noise in the Java code which does not relate to the
problem at hand, and for large systems this means the brain has to sift
through the syntax to find out what the program is actually doing.
