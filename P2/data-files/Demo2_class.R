# Set working directory, so you don't have to find the folder every time
setwd("F:/IUPUI STAT 350/R Demo/Demo 2-EDA")

# Read in data set from that working directory
classdata= read.table("class.txt", header=TRUE)

# prints the dataset
classdata

#gives the dimensions of your dataset
dim(classdata)

#gives the first rows
head(classdata)

#tells R what dataset you are going to use for the rest of the lines
## if you don't call this then you have to use the following "dataset$variable"
## to call your variable names
attach(classdata)


#create stem-and-leaf plot
stem(height)

#cuts the scale in half
stem(height, scale=0.5)

#create a histogram
hist(height)

#create a boxplot
boxplot(height, main="Boxplot of Student Heights", horizontal=TRUE)

#gives 5 number summary and mean
summary(height)

#side-by-side boxplot ...need categorical variable for x axis
boxplot(height~sex, xlab="Sex", main="Side-by-Side Boxplot of Height by Gender")

#Descriptive Statistics

#Mean or Average
mean(height)

#sorts only the variable called not the entire dataset
sort(height)

#Median
median(height)

# Gives quantiles, can use any % instead of quartiles given
quantile(height, c(0.25, 0.5, 0.75))

#5 Number summary and mean
summary(height)

#Variance
var(height)

#Standard Deviation
sd(height)

#### LINEAR REGRESSION ####

#scatterplot for two continuous variables
#many options inside plot to adjust the formatting of the graph
?plot
plot(height~weight, xlab="Weight", ylab="Height", main="Scatterplot of Weight v. Height")

#Correlation
cor(height,weight)

#if you want to calculate the correlation out 

cov(height, weight)
var(height, weight)
covariance=cov(height, weight)
sy=sd(height)
sx=sd(weight)
r= covariance/(sy*sx)
r

#Find linear regression equation
fit= lm(height~weight)
summary(fit)

