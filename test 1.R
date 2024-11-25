setwd("C/Users/user/Desktop/sta 121")
data <- read.csv("registered students.csv")
sample_size <- round(0.1  * now(data))
print(sample_size)