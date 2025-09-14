
# Euclid's Algorithms and Applications

This section is about equations of the form $ax \equiv b \bmod m$ with $a, b, m \in \mathbb{Z}$.
Such an equation can be written as $ax - qm = b$, or as $ux + vy = m$.  


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
the smallest module containing $a$ and $b$.

````{prf:theorem}
:label: thr-modules
Every module $M$ can be written as $ M = d \ \mathbb{Z}$ with $d = \min\{x \in M\ | x > 0\}$.
````

````{prf:proof}

It is plain that $ \{d k | k \in \mathbb{Z}\} \subseteq M $. 
Now assume there is an $x \in M$ that is not a multiple of $d$, so $ nd < x < x (n+1)d$. 
But $0 < y = x - nd < (n+1)d - nd = d$, and $y \in M$. This is a contradiction.
````

Euclid's extended algorithm computes, for any two integers $a$ and $b$, the greatest common divisor $\gcd(a,b)$, 
and two numbers $x$ and $y$ such that $ax + by = (a,b)$. 
It can therefore be used to solve congruence equations such as $ax \equiv b \bmod m$.
Note that $\gcd(a, 0) = \gcd(0,b) = 0$.
Euclid's plain algorithm It is identical to the extended one, except that $x_k$ and $y_k$ are omitted. It only computes $\gcd(a,b)$. 


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

````{prf:proof}

We prove first that $r_{n-1} = (a,b)$. 

We have $r_n = 0 = r_{n-2} \ \% \ r_{n-1}$ and $r_{n-1} = r_{n-3} \ \% \ r_{n-2}$, 
therefore $r_{n-3} \ \% \ r_{n-1} = 0$.
Continuing in this way will arrive at $r_{k} \ \% \ r_{n-1} = 0$, 
and finally $b \ \% \ r_{n-1} = 0$ and $a \ \% \ r_{n-1} = 0$. 
So, $r_{n-1}$ divides $a$ and $b$, hence $r_{n-1} \le (a, b)$.
   
Now let $q$ be any divisor of $a=r_0$ and $b = r_1$. If $q | r_{k-2}$ and $q | r_{k-1}$, 
then $q | r_{k}$, and finally $q | r_{n-1}$. Setting $q = (a,b)$ gives $(a, b) | r_{n-1}$, 
so $ (a,b) \le r_{n-1}$. Therefore, $r_{n-1} = (a, b)$. 

We prove next that $a x_{n-1} + b y_{n-1} = (a, b)$. 
From the definition it is clear that: 

$a x_0 + b y_0 = a = r_0$,     
$a x_1 + b y_1 = b = r_1$.

If this is true for $k=0$ and $k=1$, it holds for all $k \le n-1$:

$a x_k + b y_k$  
$= a (x_{k-2} - q_k \ x_{k-1}) + b (y_{k-2} - q_k \ y_{k-1})$  
$= (a x_{k-2} + b y_{k-2}) - q_k (a x_{k-1} + b y_{k-1})$  
$= r_{k-2} - q_k \ r_{k-1} = r_{k}$. 

So, $a x_{n-1} + b y_{n-1} = r_{n-1} = (a, b)$.   
````  

````{prf:theorem} Bezout's Theorem
 :label: thr-bezout

(i) Let $a$ and $b$ be any two integers, and $M = \{ax + by | x, y \in \mathbb{Z}\}$. Then

$\min\{x \in M\ | x > 0\} = (a, b)$,

and we can write

$M = (a, b) \cdot \mathbb{Z}$.

(ii) A Diophantine equation has an integer solution iff $(a, b)|c $.
````

````{prf:proof} 

(i) Let $d = \min\{x \in M\ | x > 0\}$. We know that $(a, b) \in M$ and $(a,b) > 0$, so $d \le (a, b)$.  
Now, any divisior $q$ of $a$ and $b$ divides $ax + by$ for any two integers $x$ and $y$, thus $q|d$ and $q \le d$. 
Setting $q = (a,b)$ completes the proof.

(ii) is a reformulation of (i): The Diophantine equation has an integer solution iff $c \in M$, 
or, equivalently, $c$ is a multiple of $(a, b)$.  
````

````{prf:corollary}
:label: cor-bezout} 

Let $a$, $b$, and $m$ be integers.

(i) If $(a, m) |b$ then the equation $ax \equiv b \bmod m$ has an integer solution.

(ii) If $(a, m) = 1$ then this solution is unique.

(iii) For any prime number $p$, the residue class ring $ \mathbb{Z}_p$, denoted by $F_p$, is a field.
````

````{prf:proof}

(i) The equation $ax - qm = b$ is solvable $q$ because $(a, m) | b$, and it is equivalent to $ax \equiv b \bmod m$.

(ii) Assume we have two solutions $x_1$ and $x_2$. Then $a(x_1 - x_2) \equiv 0 \bmod m$. 
We may divide by $a$ because $(a, m) = 1$ and get $x_1 - x_2 \equiv 0 \bmod m$.

(iii) The equation $ax \equiv 1 \bmod p$ has a unique solution for any non-zero $a \in F_p$. This solution, denoted by $a^{-1}$,
can be computed by Euclid's algorithm.      
````

````{prf:theorem} Chinese Remainder Theorem
:label: thr-chinese-remainder

Let $m_1, m_2, \ldots, m_n$ be pairwise coprime integers, that is $(m_i, m_j) = 1$ for $i \ne j$.  
Let $a_1, a_2, \ldots, a_n$ be integers such that $(a_i, m_i) = 1$ for all $i$.

(i) The system of congruences:

$a_1x \equiv b_1 \bmod m_1$,   
$a_2x \equiv b_2 \bmod m_2$,   
$\ldots$         
$a_n x \equiv b_n \bmod m_n$

has a unique solution.

(ii)
$\mathbb{Z}/(m_1 m_2 \cdots m_n) \cong \mathbb{Z}/ m_1 \times \mathbb{Z}/m_2\times  \cdots \times \mathbb{Z}/m_n$.

(iii)
$\phi(m_1 m_2 \cdots m_n) = \phi(m_1) \phi(m_2) \cdots \phi(m_n)$

(iv) 
$|\mathbb{Z}/m| = \phi(m)$
````

````{prf:proof}

(i) Let $N = m_1 m_2 \cdots m_n$,  
$q_i = N//{m_i} = \prod_{i \ne j}m_i$,       
$q_im_i = N$.

The inverse of $a_i \bmod m_i$, denoted by $a_i^{-1}$, exists because $(a_i, m_i) = 1$.  
The inverse of $q_i \bmod m_i$, denoted by $q_i^{-1}$, exists because $(m_i, m_j) = 1$ for different $i$, $j$.

Then  
$q_iq^{-1}_i \equiv 1 \bmod m_j$ for $i = j$,   
$q_iq^{-1}_i \equiv 0 \bmod m_j$ for $i \ne j$.

Hence  
$a_i^{-1}b_iq_iq^{-1}_i \equiv a^{-1}b_i \bmod m_j$ for $i = j$,  
$a_i^{-1}b_iq_iq^{-1}_i \equiv 0 \bmod m_j$ for $i \ne j$.

and we define

$x = \sum_{i=1}^{n} a_i^{-1}b_iq_iq^{-1}_i$ 

which solves the system of congruences:

$x \equiv a_i^{-1}b_i \bmod m_i$ (all $i$).  
$a_i x \equiv b_i \bmod m_i$.

The solution is unique:   
$a_ix \equiv a_iy \bmod m_i$ implies $x \equiv y \bmod m_i$ because $(a_i, m_i) = 1$.

(ii) Each $(b_1, \ldots, b_n) \in \mathbb{Z}/ m_1 \times \mathbb{Z}/m_2\times  \cdots \times \mathbb{Z}/m_n$ 
can be mapped to the unique solution $x \in \mathbb{Z}/(m_1 m_2 \cdots m_n)$ of the system of congruences.

$x \equiv b_1 \bmod m_1$,   
$x \equiv b_2 \bmod m_2$,   
$\ldots$         
$x \equiv b_n \bmod m_n$

Each $x \in \mathbb{Z}/(m_1 m_2 \cdots m_n)$ can be mapped to    
$(x \%m_1, \ldots, x \%m_n) \in \mathbb{Z}/ m_1 \times \mathbb{Z}/m_2\times  \cdots \times \mathbb{Z}/m_n$.  

(iii) This follows from (ii).  

(iv) We have $|\mathbb{Z}/p| = \phi(p) = p-1$ for prime $p$, so (iii) gives us for $m = pq$ : 

$|\mathbb{Z}/pq| = \phi(p)\phi(q)$

The assertion follows from the fundamental theorem of arithmetic.
````
