#Importing necessary packages for Stepwise Linear Regression

library("car")
library("caret")
library("gvlma")
library("predictmeans")
library("e1071")

#Data Wrangling

#Dropping all N/A from the dataset
head(Modal.IPI)
IPI<-na.omit(Modal.IPI)
head(IPI)

#Excluding the columns won't be used in the model
IPI<- subset (IPI, select = -Date)

#Checking applied changes
head(IPI)

#Applying Linear Model for IPI
#Before trying Backward Elimination, creating a linear model with all variables
FitAllIPI = lm( Inventory.performance.index~ ., data = IPI)
summary(FitAllIPI)

#Testing Multicollinearity
#Making sure there's no violation
vif(FitAllIPI)

#Try Backward
#Applying Stepwise Model 
step(FitAllIPI, direction = 'backward')

#Test Backward
#Testing the outcomes from Backward Elimination for validation
fitsomeIPI = lm(Inventory.performance.index ~ Excess.inventory.percentage + FBA.sell.through, data = MI)
summary(fitsomeIPI)