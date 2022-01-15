# 1-15-2022 , Name: Cason Konzer

# Prelims
library(ggplot2)


# Problem 1(a)
su <- read.delim(file = "Data/Su_raw_matrix.txt")

# Problem 1(b)
m_sd <- function(col)
{
    m <- mean(col)
    sd <- sd(col)
    return <- rbind(m, sd)
    colnames(return) <- ""
    print(return)
    return
}
p_1_b <- m_sd(col = su$Liver_2.CEL)

# Problem 1(c)
cm_cs <- function(df)
{
    cm <- colMeans(df)
    cs <- colSums(df)
    return <- rbind(t(cm), t(cs))
    rownames(return) <- c("m", "sd")
    print(return)
    return
}
p_1_c <- cm_cs(df = su)


# Problem 2(a)
p_2_a <- rnorm(n = 10000, mean = 0, sd = 0.2)
hist(p_2_a, xlim = c(-2,2))

# Problem 2(b)
p_2_b <- rnorm(n = 10000, mean = 0, sd = 0.5)
hist(p_2_b, xlim = c(-2,2))

# Problem 2 discussion
# We can clearly see that p_2_a has a much tighter distribution that p_2_b.
# This is because it has a smaller standard deviation. 
# Additionally both samples have sample mean 0 as they were drawn from a random normal distribution with population mean 0.


# Problem 3(a)
dat <- data.frame(cond = factor(rep(c("A", "B"), each = 200)), rating = c(rnorm(200), rnorm(200, mean = 0.8)))
# Note: data generation.

# Problem 3(b)
plot(ggplot(dat, aes(x = rating, fill = cond)) + geom_histogram(binwidth = 0.5, alpha = 0.5, position = "identity"))
# Note: overlaid histograms.

# Problem 3(c)
plot(ggplot(dat, aes(x = rating, fill = cond)) + geom_histogram(binwidth = 0.5, position = "dodge"))
# Note: interleaved histograms.

# Problem 3(d)
plot(ggplot(dat, aes(x = rating, colour = cond)) + geom_density())
# Note: density plots.

# Problem 3(e)
plot(ggplot(dat, aes(x = rating, fill = cond)) + geom_density(alpha = 0.3))
# Note: density plots w/ semi-transparent fill.

# Problem 3(f)
diabetes <- read.csv("Data/diabetes_train.csv")
plot(ggplot(diabetes, aes(x = mass, fill = class)) + geom_histogram(binwidth = 5, alpha = 0.5, position = "identity"))
plot(ggplot(diabetes, aes(x = mass, fill = class)) + geom_histogram(binwidth = 5, position = "dodge"))
plot(ggplot(diabetes, aes(x = mass, color = class)) + geom_density())
plot(ggplot(diabetes, aes(x = mass, fill = class)) + geom_density(alpha = 0.3))

# Problem 4
print(quantile(diabetes$skin, probs = c(0.10, 0.30, 0.50, 0.60)))

# print(quantile(diabetes$skin, probs = c(0.10, 0.30, 0.50, 0.60, .70, .80, .90, 1)))
# plot(ggplot(diabetes, aes(x = skin)) + geom_density(alpha = 0.3))