# Mathematics4Physics

## Calculus on $\mathbb{R}^1$

### Zeno's Paradoxa

Achilles will never overtake the tortoise, but: an infinite sum of numbers close to zero can be finite.
The standing arrow, but: an infinite sum of numbers close to zero can be positive.

#### Littlewood's Principles

Every measurable set is nearly a finite union of intervals.
Every measurable function is nearly continuous.
Every convergent sequence of measurable functions is nearly uniformly convergent.

$a_1$



### Step Functions

Consider a closed interval $A = [a, b]\subset \mathbb{R}$. A *partition of A* is an increasing sequence $\left\{x_1, x_2, \text{..} ,x_n\right\}$ with $a = x_1$,  $b = x_n$. Its granularity is $\max \left\{\left.x_k-x_{k-1}\right|k=1,\text{..},n\right\}$. A *step function* is constant on the intervals  $\left[x_{k-1}, x_k\right]$. It is clear that the sum of two step functions is again a step function and the same is true for the product of a step function with a scalar. So the step functions on an interval form a vector space $\mathcal{S}[a, b]$ . The integral of a step function $\phi$ on [a, b] is defined as 

$\int_a^b \phi (x) \, dx=\sum _{k=1}^n \text{with} \phi _k \phi (x)=\phi _k \text{on}\left(x_{k-1},x_k\right)$


The integration functional


$\int :\phi \text{Null}\text{$|$-$>$}\text{Null}\int_a^b \phi (x) \, dx$

is a linear mapping from $\mathcal{S}[a, b]$ to $\mathbb{R}$. It is also monotone:

$\phi \leq \psi \text{Null}\Rightarrow \text{Null}\int_a^b \phi (x) \, dx\text{Null}\text{$<$=}\text{Null}\int _a^b\text{any} \text{for} \text{functions} \text{step} \text{two} \phi  \psi (x) dx,\psi$

### Theorem (Approximating continuous functions by step functions)

Let $f:\unicode{f4a1}[a,b]$ be a continuous function. Then, for any$\backslash b \epsilon >0 ,$ there are step functions $\phi$ and $\psi$ such that, on $[a,b]$:

```
(*\[Phi] <= f <= \[Psi] \[RawEscape]*)
```

and

```
(*\[Psi] - \[Phi] <= \[Epsilon]*)
```

### Integrable Functions

We give two equivalent definitions of Riemann-integrability. The first one is based on step functions, the second one on intermediate sums.

#### Definition by Step Functions

The idea is that of a sandwich: A function $f$ defined on $[a,b]$is squeezed between two step functions $\phi ,\psi$ such that: 

![0cbr140m4jrxr](img/0cbr140m4jrxr.png)

If we can find such step functions for any $\epsilon >0$  then we say that $f$ is *S-integrable*. This equivalent to:

![028gqplq0e9ot](img/028gqplq0e9ot.png)

and we define:

![10bks5p9b5ru3](img/10bks5p9b5ru3.png)

Equation (![0sr1j0qtwfsaa](img/0sr1j0qtwfsaa.png)) is a concise reformulation of equation (![0kvzm7o8ruv18](img/0kvzm7o8ruv18.png)), there is nothing to prove. 

#### Definition by Intermediate Sums

An alternative definition of integrability is based on intermediate sums.This needs some terminology: we call $\left\{x_0, x_1, \text{..} ,x_n\right\}$ a partition of $[a,b]$, $\min _{k =1,\text{..},n}\text{  }\left\{x_k-x_{k-1}\right\}$ its granularity, and {![1o4zhvt9zkspp](img/1o4zhvt9zkspp.png), ![1xcr0wel1pvek](img/1xcr0wel1pvek.png), .. ,![04qrvwaf80h0d](img/04qrvwaf80h0d.png)} a set of intermediate points with ![0bqq6f8l0y4it](img/0bqq6f8l0y4it.png)â[![1o0e0hobai7jp](img/1o0e0hobai7jp.png),![1hh4ryzjtk9y6](img/1hh4ryzjtk9y6.png))(k=1,..,n). Here is the definition: A function $f$ is I-integrable on $[a,b]$ iff, for any $\epsilon >0$, we can find a $\delta  >0$such that for any partition with granularity less than Î´ and any set $\xi$ of intermediate points, we have

![1wo54scrx0xwg](img/1wo54scrx0xwg.png)

### Theorem (Riemann Integrability)

A function $f$ is S-integrable iff it is I-integrable.

In virtue of this result, we call a function Riemann-integrable, R-integrable or integrable for short, iff it is S- or I-integrable.

Proof (I to S)

to do (easy)

Proof (S to I)

to do (less easy)

#### Properties of Riemann Integrals

(R1) The set â[a, b] of R-integrable functions is a vector space. The integration functional

![1clyso62pyj9f](img/1clyso62pyj9f.png)

is a linear mapping from â[a, b] to $\mathbb{R}$. It is also monotone:

![0v1jvam0jg6a9](img/0v1jvam0jg6a9.png)

(R2) There are many R-integrable functions: step functions (by definition), continuous functions (also with finitely many discontinuities), monotone functions, the maximum, minimum, and product of R-integrable functions. A famous non-integrable function is the *Dirichlet function*, which is $1$ for rational numbers and $0$ otherwise.

(R3) â[a, b] is closed under the maximum norm, i.e. the uniform limit of R-integrable functions is R-integrable, and we can swap limit and integral:

![0kz8qbmkyptki](img/0kz8qbmkyptki.png)

#### Measurable Sets

A set $A$ is said to be measurable if its characteristic function is, and it is clear that the measure $m[A]$ is:

![142emcowtlz08](img/142emcowtlz08.png)

We define the integral of a function $f$ over a set $A$ as:

![06gejbdw5o0lx](img/06gejbdw5o0lx.png)

if the function $\chi _{A }f$ is Riemann-integrable. 

### Intermediate Value Theorem

Let f$: [a, b]\to \mathbb{R}$ be a continuous function, and $\mu \in \mathbb{R}$ such that  

```
(*	min {f [x] | x \[Element] [a, b]} <= \[Mu] <= max {f [x] | x \[Element] [a, b]}*)
```

Then there exists a $\xi \in [a, b]$such that $f[\xi ]=\mu$.
Proof by halving intervals.

### Mean Value Theorem

Let f$,\phi : [a, b]\to \mathbb{R}$ be continuous functions with Ïâ¥0.

Then there exists a $\xi \in [a, b]$such that $f[\xi ]=\mu$.

![06lqz5hprawoy](img/06lqz5hprawoy.png)

With Ï=1 we get:

![09uwxk02lzmrs](img/09uwxk02lzmrs.png)

![0eqt2xtsvsbv0](img/0eqt2xtsvsbv0.png)

#### Definition of First Derivative

Let f`: \[DoubleStruckCapitalR] -> \[DoubleStruckCapitalR] `

![0t6415igw3olj](img/0t6415igw3olj.png)

So:

```
(*f[x + h] = f[x] + f'[x] h + o[h]*)
```

and the term ` f'[x] h` is a linear approximation of $f$ at $x$. 

#### The Main Theorem of Integration

Integration and differentiation are inverse operations, but the devil is in the detail. The thing to remember is this: (A) The integral over the derivative of $F$ gives $F$, but: (B) The derivative of the integral over $f$ gives $f$ almost everywhere. This is formally stated in two theorems:
(A) Let F be differentiable on [a,b], and let the derivative $F'$ be R-integrable (no other assumptions on $F$ or $F'$), Then it holds that:

![181felfvrvaxh](img/181felfvrvaxh.png)

Note that we must require $F'$ to be integrable. If $F$is differentiable, $F'$ can be very well be not integrable.
(B) Let $f$ be integrable on $[a, b]$ and F[x] = ![0a4c7txnfbdpk](img/0a4c7txnfbdpk.png)f[y]ïy be differentiable. Then, for any interval [r,s] â [a,b]:

![07qhl6ydwvdae](img/07qhl6ydwvdae.png)

This is a formal way of saying that $f$and $F'$ are equal almost everywhere, and it is all we can expect: The function

![00kfdga4mimpk](img/00kfdga4mimpk.png)

is clearly integrable, but the derivative of its integral is zero everywhere. A single discontinuity (in this case in $x=0$), or a finite number of them just vanish â integration destroys information. Note also that if $f$is integrable, $F[x]=\int _a^xf[y]dy$ does not need to be differentiable (think of $f$as a step function).

#### Proofs

Proof of (R1) : â[a, b] of R-integrable functions is a vector space.
We show that f+g is integrable if f and g are. The proof follows a very simple pattern that often works: If f and g are integrable, the there are step functions Ï, Ï, Ï, and Ï such that $\phi \text{$<$=}f\text{$<$=}\psi$and $\rho \text{$<$=}g\text{$<$=}\sigma$. So:

```
(*\[Phi] + \[Rho] <= f + g <= \[Psi] + \[Sigma] *)
```

and

![0q60fco8zfkcu](img/0q60fco8zfkcu.png)

Using the additivity of the integral for step functions, we get:

![051x40stk8fsq](img/051x40stk8fsq.png)

Inequalities (![0pjrhay1l3nsb](img/0pjrhay1l3nsb.png)) and (![1lec83i6kjihb](img/1lec83i6kjihb.png)) show that $f+g$ is integrable. The proof for the integrability of $\text{$\lambda $f}$ for $\lambda \in \mathbb{R}$ is analogous. 

Proof of (R1b) : Every continuous function is integrable.
to do!

Proof of (R2) : â[a, b] is closed under uniform convergence.

Let $\left(\psi _n\right)_{n\in \mathbb{N}}$ be a sequence of step functions converging uniformly towards some function f:

![0urojpnb23j2j](img/0urojpnb23j2j.png)

Then f is integrable and it holds that

![0mkp6pjzxfkmg](img/0mkp6pjzxfkmg.png)

This can be seen as follows:
to do!

#### Theorem (Variable Substitution in $\mathbb{R}^1$)

Let $f:[a,b]\to \mathbb{R}$ be integrable and $y:\mathbb{R}\to [a,b]$ differentiable with $dy/dx\text{!=}0$ on $y^{-1}[a,b]$. Then it holds for the definite integral:

![180khxpwunt4n](img/180khxpwunt4n.png)

and for the indefinite integral:

![0ixnwdhn63z0h](img/0ixnwdhn63z0h.png)

Proof: Let $y_0=a <y_1<\text{..}<y_n=b$ and $x_j=y^{-1}\left[y_j\right]$. We have $x_0=y^{-1}[a] <x_1<\text{..}<x_n=y^{-1}[b]$ because $dy/dx\text{!=}0$ on $y^{-1}[a,b]$.

![10lpho7izpuv7](img/10lpho7izpuv7.png)

##### A Simple Example

To compute 

![1xtle0zz3ch58](img/1xtle0zz3ch58.png)

we set: 

![1mgspl0i88i4w](img/1mgspl0i88i4w.png)

![0mm99h9vmvcu3](img/0mm99h9vmvcu3.png)

##### Separation of Variables

The solution of the differential equation

![0x622w100rkbl](img/0x622w100rkbl.png)

is given by

```
(*y[x] = (H^-1\[SmallCircle]F)[x]*)
```

where:

```
(*F[x] = \[Integral]f[x] \[DifferentialD]x*)
```

![10j8ipk6qedcy](img/10j8ipk6qedcy.png)

Proof: We separate the variables (y to the left, x to the right):

![1w915xk87c7cc](img/1w915xk87c7cc.png)

As a result, we get two primitives $F$ and $H$, linked by the equation

```
(*H[y[x]] = F[x]*)
```

$H$ is invertible: $dH/dy$ exists and is $\neq 0$ because $g\neq 0$.

##### Legendre Substitution in $\mathbb{R}^1$

Let $f:[0,a]\to [0,b]$ be differentiable, $f^{-1}:[0,b]\to [0,a]$ differentiable and $f^{-1}[y]\neq 0$ on $[0,b]$. Then:

![1fo9w12q600wl](img/1fo9w12q600wl.png)

The \bcurve of $f$ from $\left(
\begin{array}{c}
 0 \\
 0 \\
\end{array}
\right)$ to $\left(
\begin{array}{c}
 a \\
 b \\
\end{array}
\right)$ divides the rectangle spanned by these points into two parts. Their surface is given by the two summands.

Proof: We substitute $y=f[x]$ and integrate by parts.

![0z08btqqspcfu](img/0z08btqqspcfu.png)

![070uv4l9sbcsj](img/070uv4l9sbcsj.png)

#### Theorem (Taylor in $\mathbb{R}^1$)

Derivatives are about local changes: how does a function $f$behave in a neighbourhood of some point $x$. The Taylor series allows us to express $f[x+h]$ in terms of its higher derivatives of $f$ with arbitrary precision. It comes in three varieties that differ in the remainder term. In what follows, $A$ is an open interval, and$x,u\in A$.

##### Taylor V1

Let $f \in  C^{n+1}(A)$. Then:

![1sg2lgx3nml4j](img/1sg2lgx3nml4j.png)

##### Taylor V2

Let $f \in  C^{n+1}(A)$. Then there exists a $\xi \in [x,u]$ such that:

![0bu3t22w097ws](img/0bu3t22w097ws.png)

which is the same as $(h = u-x)$:

![09oldv2hf6ze1](img/09oldv2hf6ze1.png)

##### Taylor V3

Let $f \in  C^n(A)$. Then:

![1oi8obnoqda9d](img/1oi8obnoqda9d.png)

which is the same as $(h = u-x)$:

![00yni4g32oq14](img/00yni4g32oq14.png)

##### Proofs 

![1b2ny6uxbu5x1](img/1b2ny6uxbu5x1.png)

![0f9w6n8iedmai](img/0f9w6n8iedmai.png)

So we have:

![1wsc0116yvsxz](img/1wsc0116yvsxz.png)

![0trbuyreal9ih](img/0trbuyreal9ih.png)

**V3** :

![174gi38wnhcln](img/174gi38wnhcln.png)

![0iel83npki9ny](img/0iel83npki9ny.png)

```mathematica

  
  
 
```

>>> to do: to integrals on Rn <<<
(R2) We show that a function continuous on $[a, b]$ is integrable. Intervals in $\mathbb{R}$, rectangles in $\mathbb{R}\unicode{001b}^2$, cubes in $\mathbb{R}^3$ and $\mathbb{R}^k$. The measure (or volume) $m[C]$ of a cube $C$ with edge length $\left[x_1, x_2, \text{..},x_k\right]$ is:

![0225hekglwlca](img/0225hekglwlca.png)

The characteristic function $X_A$of a set $A$ is $1$ on $A$ and $0$ everywhere else. Step functions take on finitely many values, are constant on cubes (of any size). Let Ï be a step function defined on disjoint cubes $C_i$ with Ï[x] = $\psi _{i }$ on $C_{i }$$(i=1,\text{..}N)$. The integral of Ï is defined as:

![1vr3df45z15vi](img/1vr3df45z15vi.png)

For stepwise functions Ï and Ï, and from( Î\[PlusMinus], Î² â ïµ it is clear that:

![1tiohc0tbwhin](img/1tiohc0tbwhin.png)

For some functions f it turns out that: 

![0t2nvgk7kw35o](img/0t2nvgk7kw35o.png)

If this is true, $f$ is said to be Riemann-integrable (or integrable for short), and we define

![0h9gyf0dlnq88](img/0h9gyf0dlnq88.png)

All step functions are obviously integrable, and so are continuous functions with compact support (proof!). A famous non-integrable function is the function $r$ defined on the interval $[0, 1]$ with $r[x] = 1$ if $x \in \mathbb{Q}$ and $0$ otherwise. 

Now, let $f$ and $g$ be integrable and Î\[PlusMinus], Î² â ïµ. Then $\text{$\alpha $f} + \text{$\beta $g}$ are integrable, and it holds that

![1r55al9guy0m6](img/1r55al9guy0m6.png)

#### Chain Rule

We note that:

```
(*todo*)
```

#### Product Rule

We note that:

#### Little o, Big O

Little o means: f tends to 0 faster than g, or f/g tends to zero:

![0q72rh8mdo5ju](img/0q72rh8mdo5ju.png)

Big O means: f grows not faster than g:

![1oizi4rljx7d2](img/1oizi4rljx7d2.png)
