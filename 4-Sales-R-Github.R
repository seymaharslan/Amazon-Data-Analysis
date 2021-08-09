#Importing necessary packages for Stepwise Linear Regression

library("car")
library("caret")
library("gvlma")
library("predictmeans")
library("e1071")

#Data Wrangling for Sales

#Dropping all N/A from the dataset
Sales<-na.omit(NEW.Data.Sales)

#Excluding the columns won't be used in the model
Sales<- subset (Sales, select = -Aplus)
Sales<- subset (Sales, select = -sku)
Sales<- subset (Sales, select = -asin)

#Checking applied changes
head(Sales)

#Linear Modal for Sales
#Before trying Backward Elimination, creating a linear model with all variables
FitAllSales = lm( QTY.Sold~ ., data = Sales)
summary(FitAllSales)

#Testing Multicollinearity
#Making sure there's no violation
vif(FitAllSales)

#Try Backward
#Applying Stepwise Model 
step(FitAllSales, direction = 'backward')

