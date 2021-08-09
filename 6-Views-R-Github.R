#Importing necessary packages for Stepwise Linear Regression

library("car")
library("caret")
library("gvlma")
library("predictmeans")
library("e1071")


#Data Wrangling for Views

#Dropping all N/A from the dataset
Views<-na.omit(NEW.Data.Sales)

#Excluding the columns won't be used in the model
Views<- subset (Views, select = -sku)
Views<- subset (Views, select = -asin)

#Checking applied changes
head(Views)

#Creating Linear Model for Views
#Before trying Backward Elimination, creating a linear model with all variables
LMviews= lm( Views~ Price + Rating + Review.Count + Hscore, data = Views)
summary(LMviews)

#Testing Multicollinearity
#Making sure there's no violation
vif(LMviews)

#Try Backward
#Applying Stepwise Model
step(LMviews, direction = 'backward')