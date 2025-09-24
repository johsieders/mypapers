
# Euclid's Algorithm and Applications

This section is about solving equations of the form $ax \equiv b \bmod m$ with $a, b, m \in \mathbb{Z}$.
Such an equation is equivalent to $ax = b + qm $, which is a *Diophantine equation*.  


````{prf:definition} Diophantine Equation
:label: def-diophantine

An equation of the form 
```{math}
:label: equ-diophantine
ux + vy = m 
```
with $u, v, m \in \mathbb{Z}$ is called a *Diophantine equation*.
````

````{prf:definition} Modules
:label: def-module

A set $M \subseteq \mathbb{Z}$ is called a *module* iff, 
for any $a$, $b \in M$ it holds that $a + b \in M$ and $a - b \in M$

````
For any $u$, $v \in \mathbb{Z}$, the set $M = \{ux + vy | x, y \in \mathbb{Z}\}$ is a module, 
the smallest module containing $u$ and $v$.

````{prf:theorem}
:label: thr-modules
Every module $M$ can be written as $ M = d \ \mathbb{Z}$ with $d = \min\{x \in M\ | x > 0\}$.
````

````{prf:proof}

It is plain that $d \ \mathbb{Z} \subseteq M $. 
Now assume there is an $x \in M$ that is not a multiple of $d$, so $ nd < x < x (n+1)d$. 
But $0 < y = x - nd < (n+1)d - nd = d$, and $y \in M$. This is a contradiction.
````

Euclid's extended algorithm computes for any two integers $a$ and $b$ the greatest common divisor $\gcd(a,b)$, 
and two numbers $x$ and $y$ such that $ax + by = (a,b)$. 
It can therefore be used to solve congruence equations such as $ax \equiv b \bmod m$.
Recall that $\gcd(a, 0) = \gcd(0,b) = 0$.

````{prf:algorithm} Euclid's Extended Algorithm
 :label: alg-euclid-extended
  
We start with:

$r_0 = a$, $r_1 = b$,   
$x_0 = 1$, $x_1 = 0$,  
$y_0 = 0$, $y_1 = 1$.  

and compute, for $k = 2, 3, ...$:

$q_k = r_{k-2} \ // \ r_{k-1}$,  
$r_k = r_{k-2} - q_k \ r_{k-1}$,  
$x_k = x_{k-2} - q_k \ x_{k-1}$,  
$y_k = y_{k-2} - q_k \ y_{k-1}$.  

until $r_n = 0$. Then $r_{n-1} = (a, b)$ and $a   x_{n-1} + b   y_{n-1} = (a, b)$.
````

Euclid's plain algorithm is identical to the extended one, 
except that the $x_k$ and $y_k$ are omitted. 

````{prf:proof}

We prove first that $r_{n-1} = (a,b)$. We have 

$0 = r_n \equiv r_{n-2} \bmod r_{n-1}$,    
$r_{n-1} \equiv r_{n-3} \bmod r_{n-2}$.
So, by {prf:ref}`lem-euclid-util`, we have  
$r_{n-3} \equiv 0 \bmod r_{n-1}$.  

Continuing in this way will arrive at $r_{k} \equiv 0 \bmod r_{n-1}$,
and finally at $b \equiv 0 \bmod r_{n-1}$, $a \equiv 0 \bmod r_{n-1}$.
So, $r_{n-1}$ divides $a$ and $b$, hence $r_{n-1} \le (a, b)$.
   
Now let $q$ be any divisor of $a=r_0$ and $b = r_1$. If $q | r_{k-2}$ and $q | r_{k-1}$, 
then $q | r_{k}$, and finally $q | r_{n-1}$. Setting $q = (a,b)$ gives $(a, b) | r_{n-1}$, 
so $ (a,b) \le r_{n-1}$. Therefore, $r_{n-1} = (a, b)$. 

We prove next that $a x_{n-1} + b y_{n-1} = (a, b)$. 
From the definition it is clear that: 

$a x_0 + b y_0 = a = r_0$,     
$a x_1 + b y_1 = b = r_1$.

If this is true for $k=0$ and $k=1$, then it holds for all $k \le n-1$:

$a x_k + b y_k$  
$= a (x_{k-2} - q_k \ x_{k-1}) + b (y_{k-2} - q_k \ y_{k-1})$  
$= (a x_{k-2} + b y_{k-2}) - q_k (a x_{k-1} + b y_{k-1})$  
$= r_{k-2} - q_k \ r_{k-1} = r_{k}$, and finally:

$a x_{n-1} + b y_{n-1} = r_{n-1} = (a, b)$.   
````  

````{prf:theorem} Bezout's Theorem
 :label: thr-bezout
 
 Let $a$, $b$, and $m$ be  integers. Then:

(i) 
$ \{ax + by | x, y \in \mathbb{Z}\}= (a, b) \cdot \mathbb{Z}$.

(ii)
If $(a, m) |b$ then the equation $ax \equiv b \bmod m$ has an integer solution. 
This solution is unique if $(a, m) = 1$. 

(iii) For any prime number $p$, the residue class ring $ \mathbb{Z} / p \mathbb{Z}$, denoted by $F_p$, is a field.

(iv) For any $a$ coprime to $m$, we have:

$\mathbb{Z}_m = \{\overline {ax} | 0 \le x < m\}$

````

````{prf:proof} 

(i) Let $d = \min\{x \in M\ | x > 0\}$. We know that $(a, b) \in M$ and $(a,b) > 0$, so $d \le (a, b)$.  
Any divisior $q$ of $a$ and $b$ divides $ax + by$ for any two integers $x$ and $y$, thus $q|d$ and $q \le d$. 
Setting $q = (a,b)$ completes the proof.

(ii) is a reformulation of (i).  

(iii) By (ii), for each $a \in F_p$, the unique solution of $ax \equiv 1 \bmod p$ is its inverse modulo $m$.

(iv) Let $a$ be coprime to $m$ and $b$ an integer. 
Then there is an $x$ such that $ax \equiv b \bmod m$, and $\overline{ax} = \overline{b}$


````

As an introduction to the Chinese Remainder Theorem, we consider the residue class ring $\mathbb{Z}/6$. 
Observing that $6 = 2 \cdot 3$, we can represent $\mathbb{Z}/6\mathbb{Z} = \{0, 1, 5\}$ as a combination of 
elements of $\mathbb{Z}/2\mathbb{Z} = \{0, 1\}$ and $\mathbb{Z}/3\mathbb{Z} = \{0, 1, 2\}$.


| $n$ | $n\ \%2$ | $n\ \%3$ |
|:---:|:--------:|:--------:|
| $0$ |   $0$    |   $0$    |
| $1$ |   $1$    |   $1$    |
| $2$ |   $0$    |   $2$    |
| $3$ |   $1$    |   $0$    |
| $4$ |   $0$    |   $1$    |
| $5$ |   $1$    |   $2$    |

The table tells us that

$\{1, 5\} \cong \{1\} \times \{1, 2\}$, or:  
$\mathbb{Z}^\times_6 \cong \mathbb{Z}^\times_2 \times \mathbb{Z}^\times_3$, and   
$\phi(6) = \phi(2) \phi(3) = 2$.

This is a simple, non-trivial instance of the Chinese Remainder Theorem.


````{prf:theorem} Chinese Remainder Theorem
:label: thr-chinese-remainder

Let $m_1, m_2, \ldots, m_n$ be pairwise coprime integers, that is $(m_i, m_j) = 1$ for $i \ne j$,  
$m = m_1 m_2 \cdots m_n$,  
$a_1, a_2, \ldots, a_n$ be integers such that $(a_i, m_i) = 1$ for all $i$.

(i) The system of congruences:


```{math}
:label: equ-congruences

a_1 x \equiv 1 \bmod m_1,


a_2 x \equiv 1 \bmod m_2,


\ldots       


a_n x\equiv 1 \bmod m_n  


```
has a unique solution.


(ii) $\mathbb{Z}^\times_m \cong \mathbb{Z}^\times_{m_1} \times \mathbb{Z}^\times_{m_2} \cdots \times \mathbb{Z}^\times_{m_n}$

(iii)
$\phi(m) = \phi(m_1) \phi(m_2) \cdots \phi(m_n)$

(iv)
If $m = \prod_{i=1}^n p_i^{\alpha_i}$, then:  

$\phi(m) = m\prod_{i=1}^n (1 - \frac{1}{1-p_i^{\alpha_i}})$
````

````{prf:proof}
(i) Let
$q_i = m//{m_i} = \prod_{i \ne j}m_i$, so       
$q_im_i = m $.

The inverse of $a_i \bmod m_i$, denoted by $a_i^{-1}$, exists because $(a_i, m_i) = 1$.  
The inverse of $q_i \bmod m_i$, denoted by $q_i^{-1}$, exists because $(m_i, m_j) = 1$ for different $i$, $j$.

Then  
$q_iq^{-1}_i \equiv 1 \bmod m_j$ for $i = j$,   
$q_iq^{-1}_i \equiv 0 \bmod m_j$ for $i \ne j$.

Hence  
$a_i^{-1}q_iq^{-1}_i \equiv a^{-1} \bmod m_j$ for $i = j$,  
$a_i^{-1}q_iq^{-1}_i \equiv 0 \bmod m_j$ for $i \ne j$.

and we can define

$x = \sum_{i=1}^{n} a_i^{-1}q_iq^{-1}_i$ 

which solves the system of congruences:

$x \equiv a_i^{-1} \bmod m_i$ (all $i$), or:  
$a_i x \equiv 1 \bmod m_i$.

The solution is unique, because:     
$a_ix \equiv a_iy \bmod m_i$ implies $x \equiv y \bmod m_i$ because $(a_i, m_i) = 1$.

(ii) It follows from (i) that the mapping

$T: \mathbb{Z}^\times_m \to \mathbb{Z}^\times_{m_1} \times \mathbb{Z}^\times_{m_2} \cdots \times \mathbb{Z}^\times_{m_n}$

given by

$T(x) = (x \%m_1, x \%m_2, \ldots, x \%m_n)$,  
$T^{-1}(a_1, a_2, \ldots, a_n) = \text{unique solution }x$ of {eq}`equ-congruences`

is an isomorphism.


(iii) Immediate from (ii)

(iv) Using equation {eq}`equ-phi-prime`, we get:   

$\phi(m) = \phi(p_1^{\alpha_1}) \ \phi(p_2^{\alpha_2}) \ \cdots \ \phi(p_n^{\alpha_n}) =$     
$p_1^{\alpha_1 - 1}(p_1 - 1) \ p_2^{\alpha_2 - 1}(p_2 - 1) \ \cdots \ p_n^{\alpha_n - 1}(p_n - 1) =$  
$m\prod_{i=1}^n (1 - \frac{1}{p_i})$ 

```{bibliography}

```

