---
title: "DAO_Corollary"
date: 2021-11-10T09:30:40-08:00
draft: false
---

# DAO Corollary, For Teams

> F.K.A. Amdahl's Corollary

The most efficient way to implement a piece of software is to do it all yourself.

No time is wasted communicating (or arguing); everything that needs to be done is done by the same person, which increases their ability to maintain the software; and the code is by default way more consistent.

Turns out “more efficient” doesn’t mean “faster”. When there are more people working on the same problem, we can parallelized more at once.

When we break work up across a team, in order to optimise for the team, we often have to put _more_ work in, individually, to ensure that the work can be efficiently parallelized. This includes explaining concepts, team meetings, code review, pair programming, etc. But by putting that work in, we make the work more parallelized, speeding up and allowing us to make greater gains in the future.

## An Aside: Amdahl’s Law

Amdahl’s law can be formulated as follows:

Slatency\=1(1\-p)+ps

In words, it predicts the maximum potential speedup (Slatency), given a proportion of the task, p, that will benefit from improved (either more or better) resources, and a parallel speedup factor, s.

To demonstrate, if we can speed up 10% of the task (p\=0.1) by a factor of 5 (s\=5), we get the following:

Slatency\=1(1\-0.1)+0.15≈1.09

That’s about an 9% speedup. Eh, fair enough. If we can swing it, sounds good.

However, if we can speed up 90% of the task (p\=0.9) by a factor of 5 (s\=5), we get the following:

Slatency\=1(1\-0.9)+0.95≈3.58

That’s roughly a 250% increase! Big enough that it’s actually worth creating twice as much work; it still pays off, assuming the value of the work dwarfs the cost of the resources.

s→∞, which means ps→0, so we can also drop the ps term if we can afford potentially infinite resources at no additional cost.

Slatency\=11\-0.9\=10

In other words, if 90% of the work can be parallelised, we can achieve a theoretical maximum speedup of 10x, or a 900% increase. This is highly unlikely, but gives us a useful upper bound to help us identify where the bottleneck lies.

## Generalising To The Amount Of Work

Typically, we start off with a completely serial process. In order to parallelize, we need to do _more_ work. It doesn’t come for free.

This means that when computing s, the parallel speedup, we should divide it by the cost of parallelisation. For example, if the cost is 2, that means that making the work _parallelisable_ (without actually increasing the number of resources) makes the parallel portion take twice as long as it used to. (The serial portion is unchanged.)

So, if we take the example from earlier, where 90% of the work is parallelisable _but_ it costs twice as much to parallelize, we’ll get the following result:

Slatency\=1(1\-0.9)+0.952≈2.18

It’s still about a 117% increase in output!

However, if p\=0.1, then there’s really very little point in adding more resources.

Slatency\=1(1\-0.1)+0.152≈1.06

And if the cost of parallelization is greater than the potential speedup, bad things happen:

Slatency\=1(1\-0.1)+0.1520≈0.769

Adding 4 more resources slows us down by 23%. Many of us have seen this happen in practice with poor parallelization techniques—poor usage of locks, resource contention (especially with regards to I/O), or even redundant work due to mismanaged job distribution.

## So, What Does It All Mean?

Amdahl’s law tells us something very insightful: when the value of your work is much greater than the cost, you should optimise for parallelism, not efficiency. The cost of a weekly two-hour team meeting is high (typically in the $1000s each time), but if it means that you can have 7 people on the team, not 3, it’s often worth it.

[Delivering faster means you can deliver more.](https://en.wikipedia.org/wiki/Gustafson's_law)

Don’t stop at optimizing meetings. Pairing costs money, but it usually means way better team cohesion, which improves your ability to parallelise. Better to have 10 people working on 5 problems and doing a better job than it is to have 10 people working on 10 problems.

The former will lead to fewer conflicts, fewer defects and a much more motivated team. In other words (and by words I mean algebra), p and s both go up way faster than the amount of work.

Yes, meetings and other collaboration enhancers are boring. But they’re necessary. Just make sure you never lose sight of their purpose: to build a shared vision and style of work so that the team (or the organization) works as one unit. This allows us to grow the team and benefit from the increased number of people on the job.

Conversely, if all the knowledge of how the product works is in one person’s head, p≈0. While there’s no impact to efficiency this way, it limits our ability to produce, because one person can only do so much. Adding more people just makes things slower.
