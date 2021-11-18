---
title: "Understanding X - 1"
date: 2021-11-18T13:28:51+05:30
draft: false
tags:
- bitmanip
categories:
- programming
---

When subtracting one from a number, its binary representation changes in a predicable and useful manner:

* All the trailing consecutive zeroes are flipped to ones
* The first bit set to one found starting from the right is cleared to zero

As an example, consider

```bash
x = 3 # 11
x - 1 # 10
```

Here there are no trailing zeroes. So only the second change happens. The first one (which is the least significant bit) is flipped. 

We can also see that no bits to the left of the "one" which is flipped are ever affected.

Here the unchanged part, the "wall" bit and the rest are separated by spaces for clarity:

```bash
1111100_1_000 -
0000000_0_001

1111100_0_111
```

The 1 bit in braces is the point where the changes to the bit pattern stop. It is flipped to 0. Everything to its right is flipped to 1. Everything to its left remains untouched.

------
tags: [bitmanip](/tags/bitmanip)

categories: [programming](/categories/programming/)

