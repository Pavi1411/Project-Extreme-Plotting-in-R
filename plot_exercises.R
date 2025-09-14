# Set random seed and generate data
set.seed(1001)
x1 <- 1:100 + rnorm(100, mean=0, sd=15)
y1 <- 1:100

# Open PDF to save all plots
pdf("all_plots.pdf")

# 1,2,3: Scatter plot with title and axis labels
plot(x1, y1,
     main="Scatter plot of x1 vs y1",
     xlab="x1 values",
     ylab="y1 values")

# 4: Add margin text (top side = 3)
mtext(side=3, text="hi there")

# 5: Margin text on left side (side=2)
mtext(side=2, text="hi there")

# 6: Using paste() with mtext
mtext(side=3, text=paste("Mean of x1 =", round(mean(x1),2)))

# 7: Pearson correlation
cor_val <- cor(x1, y1)

# 8: Display correlation coefficient on plot
mtext(side=1, text=paste("Correlation =", round(cor_val, 3)))

# 9,10: Scatter plot with color and pch=19
plot(x1, y1, col="red", pch=19,
     main="Scatter plot with col=red, pch=19")

# 11: Scatter plot with pch=18
plot(x1, y1, col="blue", pch=18,
     main="Scatter plot with col=blue, pch=18")

# 12: Histogram of x1
hist(x1, main="Histogram of x1")

# 13: Customized histogram
hist(x1, col="lightblue",
     main="Distribution of x1",
     xlab="x1 values",
     ylab="Frequency")

# 14: Boxplot of y1
boxplot(y1, main="Boxplot of y1")

# 15: Boxplots of x1 and y1 together
boxplot(x1, y1,
        names=c("x1", "y1"),
        main="Boxplots of x1 and y1")

# 16: Horizontal boxplots
boxplot(x1, y1,
        names=c("x1", "y1"),
        horizontal=TRUE,
        main="Horizontal Boxplots of x1 and y1")

# 17: Multiple plots with par(mfrow=c(2,1))
par(mfrow=c(2,1))
boxplot(x1, main="Boxplot of x1")
hist(y1, main="Histogram of y1")

# 18: Multiple plots with par(mfrow=c(1,2))
par(mfrow=c(1,2))
boxplot(x1, main="Boxplot of x1")
hist(y1, main="Histogram of y1")

# Reset par settings
par(mfrow=c(1,1))

# Close the PDF device
dev.off()

# 19: In RStudio, you can also use the "Export" button for individual plots
# 20: All plots have been saved into "all_plots.pdf"
