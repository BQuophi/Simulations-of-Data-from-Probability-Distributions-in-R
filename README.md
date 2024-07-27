# Simulating Data and Descriptive Statistics with R

This project demonstrates how to generate random data samples from various probability distributions, calculate basic descriptive statistics, and visualize the results using R. The project makes use of the `psych` package for detailed descriptive statistics and includes a custom function for generating and plotting data based on a specified relationship.

## Table of Contents

1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Step-by-Step Guide](#step-by-step-guide)
    1. [Installing and Loading Packages](#installing-and-loading-packages)
    2. [Setting a Seed](#setting-a-seed)
    3. [Generating Random Samples](#generating-random-samples)
    4. [Descriptive Statistics](#descriptive-statistics)
    5. [Graphical Outputs](#graphical-outputs)
    6. [Simulating Data with Custom Function](#simulating-data-with-custom-function)
5. [Resources](#resources)

## Introduction

This project aims to provide a practical guide to simulating data from various probability distributions, calculating descriptive statistics, and creating visualizations in R. Key concepts covered include generating random samples, using the `psych` package for descriptive statistics, and simulating data based on a specified mathematical relationship.

### Key Concepts

1. **Random Sampling**: Generating random samples from specified distributions.
2. **Descriptive Statistics**: Calculating summary statistics to describe the data.
3. **Data Simnulation from Probability Distributions**: Simulating data from uniform, normal, and exponential distributions.
4. **Data Visualization**: Creating histograms and scatter plots to visualize data.
5. **Custom Function**: Creating a function to automate the data generation and plotting process.

## Installation

To run this project, you need to have R and RStudio installed on your system. Additionally, install the necessary R packages:

```R
install.packages("psych")
```

## Usage

1. Clone the repository to your local machine.
2. Open the R script in RStudio.
3. Run the script to generate random samples, calculate descriptive statistics, and visualize the results.

## Step-by-Step Guide

### Installing and Loading Packages

First, install and load the required package:

```R
install.packages("psych")
library(psych)
```

### Setting a Seed

Setting a seed ensures that the random samples generated are reproducible:

```R
set.seed(1245)
```

### Generating Random Samples

Generate random samples from a specified range:

```R
Age_st <- sample(x = 18:25, size = 20, replace = TRUE)
Age_st1 <- sample(x = 18:25, size = 20, replace = TRUE)
```

Generate random samples from a uniform distribution:

```R
Age_unif <- round(runif(n = 20, min = 18, max = 25), digits = 0)
```

### Descriptive Statistics

Calculate summary statistics using the `summary` function:

```R
summary(Age_unif)
```

Calculate detailed descriptive statistics using the `describe` function from the `psych` package:

```R
describe(Age_unif)
```

Calculate the trimmed mean to handle outliers:

```R
mean(x = Age_st, trim = 0.05)
```

### Graphical Outputs

Create a histogram to visualize the distribution of the data:

```R
par(mar = c(4, 4, 1, 1))
hist(Age_st, main = "")
```

### Simulating Data with Custom Function

Simulate observations using a specified relationship and visualize the results:

```R
a = 0.5
Lambda = 2
mu = 0
sigma = 5
n = 50

# Generate observations from the exponential distribution
x <- rexp(n = n, rate = Lambda)

# Generate observations from the normal distribution
y <- a * x + rnorm(n = n, mean = mu, sd = sigma)

# Plot the results
plot(x = x, y = y)
```

Create a custom function to automate the process:

```R
new_func <- function(a, Lambda, mu, sigma, n) {
  x <- rexp(n = n, rate = Lambda)
  y <- a * x + rnorm(n = n, mean = mu, sd = sigma)
  Tab <- data.frame(x = x, y = y)
  plot(Tab)
  return(Tab)
}

# Use the custom function
new_func(a = 5, Lambda = 2, mu = 0, sigma = 5, n = 50)
```

## Resources

- [R Documentation](https://www.r-project.org/other-docs.html)
- [(psych: Procedures for Psychological, Psychometric, and Personality Research) Package Documentation]([https://cran.r-project.org/web/packages/psych/psych.pdf](https://cran.r-project.org/web/packages/psych/index.html))
- [RStudio](https://rstudio.com/)

This project provides a comprehensive guide to simulating data, calculating descriptive statistics, and visualizing results in R. It is suitable for beginners and those looking to explore data simulation and basic statistical analysis in R.
