install.packages("psych")
# We install the psych package to use the "describe" function for 'Basic descriptive statistics'

18:25 #(range from 18 to 25)
?sample

# Setting a seed helps to generate the same random sample or same results on different computers
set.seed(1245)

## SIMULATIONS OR GENERATIONS FROM PROBABILITY DISTRIBUTIONS

#Generate random sample
(Age_st<- sample(x = 18:25,size = 20,replace = TRUE))
# Generate random samples with probabilities
Age_st1 <- sample(x = 18:25,size =20,replace = TRUE)

####### DISTRIBUTIONS ###########

# Simulate observations from a uniform distribution using "runif"
Age_unif <- round(runif(n = 20, min = 18,max = 25),digits = 0)
Age_unif

summary(Age_unif) # Summary statistics
describe(Age_unif) # Summary statistics

# Using trimmed mean: Used to deal with outliers / extreme values
mean(x = Age_st,trim = 0.05)


summary(Age_st)
describe(Age_st)

#####  Graphical Outputs/ Plots
?par
par(mar=c(4,4,1,1))
hist(Age_st,main = "")


###### Simulate observations using the relation y=ax + N(mu,sigma^2) 
# Relation = a*x(from exponential dist) + N(mu,sigma^2) i.e observations from normal distribution


a = 0.5;Lambda = 2; mu = 0;sigma = 5; n =50

# Generate observations from the exponential distribution
x <- rexp(n = n,rate = Lambda)
# Generate observations from the Normal distribution
y <- a*x + rnorm(n = n,mean = mu,sd = 5)

plot(x = x,y = y)

# Creating a function to do the above for us 

new_func <- function(a, Lambda,mu,sigma,n)
{
  x <- rexp(n = n,rate = Lambda)
  y <- a*x + rnorm(n = n,mean = mu,sd = 5) 
  Tab <- data.frame(x=x,y=y)
  plot(Tab)
  return(Tab)
}

new_func(a = 5,Lambda = 2, mu = 0,sigma = 5, n =50)
