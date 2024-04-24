---
title: "Hash tables for unsorted array lookups"
date: 2019-08-03T18:58:57-05:00
type: "post"
category: "technical"
slug: "hash-table-unsorted-array"
draft: false
---

After solving a number of programming problems, you start to notice patterns
that help create efficient solutions.

One of these patterns that I've come across is to use a hash table when
performing some kind of "lookup" on an array. Hash tables are also known as
maps or dicts.

## Two Sum problem

For example, suppose you want to find two indices in an array whose values
add to a target number. One approach would be to check each pair in the
array to see if their sum is the target. This, however, would be much slower
compared to using a hash table because we have to iterate through the entire
array for each element in the array.

The hash table approach involves storing each element in the array as a key
which maps to its index. The time to do this is linear in the size of the
array. Once we have the hash table, we can go through the array, calculate what
number we need to find (target minus the current element) and check (in
constant time) if that number exists using the hash table.

The Big O time for the first approach is *O(n²)*, where *n* is the size of the
array, while the hash table approach is *O(n)* because we only go through the
array twice: once to create the hash table and once to look for the pair.

## Unsorted arrays

Suppose we have an unsorted array, and we know we'll need to find numbers in it.
Do you sort the array in *O(nlogn)* time and then take advantage of the sorted
array? That's one option, but what if we use a hash table? In one pass, we can
create the hash table which can then be used to look up elements in constant
time. The same task would be accomplished without sorting the array, leading
to a *O(n)* algorithm.

When you're dealing with arrays and looking things up in those arrays, a hash
table might help solve the problem efficiently.
