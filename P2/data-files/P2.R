# P2 code
#Counter number of occurances of a number in a dist
counts <- function(n, dist){
  counter=0
  for (item in dist) {
    if(item==n){
      counter = counter + 1
    }
  }
  return(counter)
}

array <- array(dim = 10000)
for(i in 1:10000)
{
  sample50 = rbinom(50,1,0.4)
  sample = sum(sample50) / 50
  array[i] = sample
}
hist(array)

my_rbinom <- rbinom(50, 1, 0.2)

N=10000
result = apply(matrix(1:N, ncol = 1), 1, function(x) rbinom(50, 1, 0.4))
hist(colSums(result)/50, xlab = expression(bar(X)[50]), main = "", prob = TRUE)

#4b) = 0.0004
prob = mean((colSums(result)/50) < .19)
prob
help(colSums)
help(mean)
#5)binomcdf(50,.4,.19*50) = 0.0007
#6)normalcdf(-99, .19, .4, sqrt(.4*.6/50)) = 0.0012

#7)add and subtract the .5 from the X's from binomcdf
# correct for the normal distribution: normcdf(-99,9,np=50*.4,npq=sqrt(50*.4(.6)) = 0.000748
#notice: -99 to 9 instead of -99 to 9.5 as before (9.5==(50)*(0.19))

