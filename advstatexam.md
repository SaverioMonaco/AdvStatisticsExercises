# Adv Stat
#### 1. The R programming language is
> A language and environment for statistical computing

#### 2. Given a vector y of 10 components, what is the meaning of ``sample(y,5)``
> Sample 5 elements from the vector y without replcement

#### 3. Given a vector y of 20 components, how to select all but the first 5 elements
> ``y[-(1:5)]``

#### 4. What does the ``save()`` command do?
> save the current R session with all data, objects and environment

#### 5. Given df is a dataframe, how to access the component with index 3?
> ``df[[3]``

#### 6. Given df is a dataframe, how do you retrieve the names of the columns?
> ``names(df)``

#### 7. What is the result of ``NA & FALSE``
> ``FALSE``

#### 8. A matrix is a vector of dim = 2
> True

#### 9. A factor is a vector that contains only predefined values
> [x] ``%factors`` are built on top of integers

> [x] `` ``many base R functions automatically convert character vector to factors

#### 10. A matrix
> is a 2 dimensional object
> is a vector where the new dmensions has been specified with the ``dim()`` function

#### 11. What is the meaning of the sentence _all probabilities are conditional_ ?
To talk about probability we write P(A|I), where I is the background condition that is related to the information we have. Indeed it makes no sense to talk about the probability without being explicit about the conditions upon which the assigment of probability is based. We have a chain of inductive logic and at each point where an answer is required, we shall report the best inference we can make based upon the evidence available to that point. As new evidence becomes available, we shall see the same procedure to update our inferences. It is therefore an iterative process until the evidence is so overwhelming that it does not seem worthwhile to pursue the matter any further.



#### 12. Explain the difference between two independent events and events that are mutually exclusive
Two events are independent if the occurence of the first does not affect the occurrence or non-occurrence of the second. For independent events: P(A|B,I) = P(A|I), hence we have P(AB|I) = P(A|I)P(B|I). Two events are mutually esclusive if they have no outcome in common. Hence P(A+B|I)=P(A|I)+P(B|I)

#### 13. Given two propositions, A and B, and a background information I, write down Bayes theorem P(B|A,I)
The Bayes theorem can be written as: P(B|A,I) = (P(A|B,I)P(B|I))/P(AB|I)+P(ABnot|I)) where, in Bayesian inference, P(A|B,I) is called the Likelihood and tells us the probability of getting the data we measured. P(B|I) is the prior which encapsulates all the information we have independent on the data. The denominator is called the Evidence

#### 14. Describe the inverse transform method, and when it can be applied
Since all CDFs are monotone increasing functions in the interval [0,1] hence invertible, there is a 1:1 correspondence between CDFs, so we can invert the CDF of a desired distribution (if the analitical form is known) and then:
$$F(x_i)=G(Y)\equiv u$$
$$x_i = F^{-1}(u) $$
We can generate random numbers between 0 and 1 and use the function $F^{-1}$ to map it to the desired distribution

#### 15. Write Markov's inequality
$$P(X\geq k)\leq\frac{E[X]}{k}$$

#### 16. Given a Poisson distribution with parameter $\lambda$, what are the expected value and the variance
> $$E[x]=\lambda\qquad\qquad Var[x]=\lambda$$

#### 17. Several types of serological tests have been developed in the context of SARS-CoV-2. One of those tests has a specificity (i.e. the accuracy in identifying a negative result for a sample without antibodes) of 0.95; the sensitivity of the test (i.e. the accuracy in identifying a positive result) is 0.95. Determine the false positive probability, i.e. the probability of not having the disease if the test gives a positive result. 
T: Test is positive
A: Patient has antibodes

Specificity: $P(\bar{T}|\bar{A})=0.95$
Sensitivity: $P(T|A)=0.95$
(I add) $P(A) = 0.05$
Determine $P(\bar{A}|T)$

$$P(\bar{A}|T)=\frac{P(T|\bar{A})P(\bar{A})}{P(T)}=\frac{(1-P(\bar{T}|\bar{A}))(1-P({A}))}{P(TA)+P(T\bar{A})}=$$
$$=\frac{(1-P(\bar{T}|\bar{A}))(1-P({A}))}{P(T|A)P(A)+P(T|\bar{A})P(\bar{A})}=\frac{(1-P(\bar{T}|\bar{A}))(1-P({A}))}{P(T|A)P(A)+P(T|\bar{A})P(\bar{A})}=$$
$$=\frac{(1-P(\bar{T}|\bar{A}))(1-P({A}))}{P(T|A)P(A)+(1-P(\bar{T}|\bar{A}))P(\bar{A})}$$
> Answer: 0.2297 (or 0.0425)

#### 18. The consumer watchdog group in a small town is concerned about the cost of electricity for residential customers. Analyzing a random sample of 25 residential accounts, the total costs of electricity used over three months (June, July and August) are 514, 536, 345, 440, 427, 443, 386, 418, 364, 483, 506, 385, 410, 561, 275, 306, 294, 402, 350, 343, 480, 334, 324, 414, 296. Assume that the amount of used electricity follows a normal distribution with unknown mean, $\mu$ and fixed standard deviation $\sigma=80$.
#### a) Use a normal prior with mean = 325 and standard deviation $\sigma = 80$ for $\mu$, and find the posterior distribution for $\mu$
#### b) Find a 95% credible interval for $\mu$
#### c) Perform a Bayesian test of hypothesis: H0: $\mu\leq 350$ versus H1: $\mu>350$ at the 5% level
