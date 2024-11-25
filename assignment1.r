
#for reproducibility
set.seed(42)

#generate 30 random scores
scores <- runif(30, min = 0, max=100)

#creating 100 samples
samples <- replicate(100, sample(scores, size = 5, replace = FALSE))

#generate the sample means
sample_means <- apply(samples, 2, mean)

#print first 10 sample means
print(sample_means[1:10])

#plot histogram
hist(sample_means, main = "Histogram of sample means",
    xlab = "Sample Mean",
    col = "skyblue",
    border = "white",
    breaks = 10)

#get population mean, SD and SE
population_mean <- mean(scores)
population_sd <- sd(scores)
population_se <- population_sd/sqrt(length(scores))

cat("population mean: ", population_mean, "\n")
cat("population SD: ", population_sd, "\n")
cat("population SE: ", population_se, "\n")

#displays the population mean on the histogram
abline(v = population_mean, col = "red", lwd = 2, lty =2)
legend("topright", legend = c("Population Mean"), col= c("red"), lty = c(2), lwd = c(2))