
# Probability that the train arrives between 8:10 a.m. and 8:25 a.m.,  between 10 and 25 minutes
punif(25, min=0, max=40) - punif(10, min=0, max=40)

# Probability that an update will take at most 2 hours, P(X <= 2)
pexp(2, rate=1/3)


# i. Probability that a randomly selected person has an IQ above 130,P(X > 130)
1 - pnorm(130, mean=100, sd=15)


# ii. IQ score that represents the 95th percentile
qnorm(0.95, mean=100, sd=15)
