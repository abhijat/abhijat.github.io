---
title: "Dropping Last Bit"
date: 2021-11-18T20:00:20+05:30
draft: false
tags:
- bitmanip
categories:
- programming
---

Clearing or dropping the rightmost set bit of a number is easy if we use the property of [x - 1](/posts/understanding_minus_one). There we saw that subtracting one from a number changes the bit pattern so
that the trailing zeroes are set to one and the last one is set to 0.

We also know that the remaining numbers to the left of the "one" (referred to as the wall bit) which is set are untouched. Given these two facts, we can see that if we AND the numbers X and X-1, 

1. The bits to the left of the wall bit would not change
2. The bits to the right of the wall bit, including the bit itself, will be cleared (because for each bit we are ANDing 0 and 1 or 1 and 0)

These two facts combine to give us the final outcome that X & X-1 clears the rightmost set bit in a number:

```bash
10010010 1 00  # x
10010010 0 11  # x-1

10010010 0 00  # x & x-1
```

------
tags: [bitmanip](/tags/bitmanip)

categories: [programming](/categories/programming/)