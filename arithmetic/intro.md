# First Steps in Arithmetic



## Introduction

This note takes a deliberately short, constructive path through the core facts of elementary number theory—enough to make modular arithmetic usable, computable, and conceptually clean. We begin with the integer division theorem and use it to formalize the operators `//` (integer quotient) and `%` (remainder). From there, congruences are introduced as a **logical** relation (a statement with a truth value), in contrast to the **numerical** operators `//` and `%`. This distinction clears the way to work systematically with residue classes: for a fixed modulus $m$, the set $\mathbb{Z}/m\mathbb{Z}$ forms the residue class ring, where addition and multiplication behave as expected.

With that algebraic stage set, the paper moves to divisibility and the structure of the integers. Euler’s Lemma supports both the manipulation of congruences (including safe “division” when coprimality holds) and the proof of the Fundamental Theorem of Arithmetic. Euler’s Theorem and its prime-modulus corollary (Little Fermat) provide the first general tool for finding modular inverses in principle.

The second half turns this theory into algorithms. Euclid’s extended algorithm not only computes $\gcd(a,b)$ but exhibits integers $x,y$ with $ax+by=(a,b)$ (Bézout), giving immediate criteria for the solvability and uniqueness of linear congruences $ax \equiv b \pmod m$. This constructive viewpoint culminates in the Chinese Remainder Theorem, the isomorphism $\mathbb{Z}/(m_1\cdots m_n)\cong \prod_i \mathbb{Z}/m_i$, and the multiplicativity of $\phi$.

**Why read this?** Because it packages the essentials—definitions, theorems, and proofs—so that each statement is both conceptually transparent and algorithmically actionable. Readers who enjoy precise reasoning and also care about computation (e.g., implementing `%`, `//`, modular inverses, or CRT in code) will find a compact, self-contained route from first principles to practical tools that power modern applications in cryptography, coding theory, and computational mathematics.


