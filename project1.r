counts <- c(23,17,35,50)
categories <- c("A", "B", "C", "D")

#create a bar chart
barplot(counts, names.arg = categories, 
col = "skyblue", 
main = "Bar chart example", 
xlab = "categories", 
ylab = "Counts")