sampling = function(n, dist) {
  x = sample(dist$value, size = n, replace = TRUE, prob = dist$prob)
  return(x)
}
#define dist based on the pmf.
dist = list(value = c(0, 1, 2, 3), prob = c(0.1, 0.2, 0.4, 0.3))

#call the function sampling for the number we want in our sample and the distribution we defined above.
sampling(10, dist)
sampling (100, dist)

#sample randomly from a binomial (number of trials, probability of success)
rbinom(10, 25, 0.2)

#If you need to run calculations or graph the data from your random sampling, you need to save it to a dataset name.
#Then call that name.
data=rbinom(100, 25, 0.2)
data

#Hypergeometric Random Sampling (sample size, k, N-k, n)
rhyper(10, 12, 13, 8)

#Poisson(sample size, lambda)
rpois(10, 4)

#Uniform(sample size, a, b)
runif(10, 1, 3)

#Exponential(sample size, lambda)
rexp(10, 4)

#Normal(sample size, mu, sigma)
rnorm(10, 4, sqrt(2))

### Law of Large Numbers ###
#Calculate mean and standard deviation for pmf above.
mu=sum(dist$value*dist$prob)
mu

sdv=sqrt(sum((dist$value-mu)^2*dist$prob))
sdv

#track the sample means as sample sizes grow.
mean_tracking = function(n, dist) {
  x = sample(dist$value, size = n, replace = TRUE, prob = dist$prob)
  s = cumsum(x)
  r = s/(1:n)
  return(r)
}
n = 1000
result = mean_tracking(n, dist)
plot(result, type = "l", ylim = c(mu - 0.5, mu + 0.5), ylab = expression(bar(X)[n]),
     xlab = "n")
lines(c(0, n), c(mu, mu))

#Central Limit Theorem
N = 10000
result = apply(matrix(1:N, ncol = 1), 1, function(x) sampling(n, dist))
hist(colSums(result)/n, xlab = expression(bar(X)[n]), main = "", prob = TRUE)
mean(colSums(result)/n)
sd(colSums(result/n))
sdv/sqrt(n)


##Exponential
n=1000
result=rexp(n,4)
hist(result, xlab = "x", main = "", prob = TRUE)
mean(result)
sd(result)

n = 10000
result = apply(matrix(1:N, ncol = 1), 1, function(x) rexp(n, 4))
hist(colSums(result)/n, xlab = expression(bar(X)[n]), main = "", prob = TRUE)
mean(colSums(result)/n)
sd(colSums(result)/n)
(1/4)/sqrt(n)