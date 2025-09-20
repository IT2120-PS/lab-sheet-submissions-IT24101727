# Question 1
# i. What is the distribution of X?
# Binomial distribution with n=50 and p=0.85

#ii.What is the probability that at least 47 students passed the test?
pbinom(46, size=50, prob=0.85, lower.tail=TRUE)  # This is P(X <= 46)
1 - pbinom(46, size=50, prob=0.85, lower.tail=TRUE)  # This is P(X >= 47)

# Question 2
# i. What is the random variable (X) for the problem?
# Number of customer calls received in an hour

# ii. What is the distribution of X?
# Poisson distribution with lambda=12

# iii. What is the probability that exactly 15 calls are received in an hour?

dpois(15, lambda=12)
