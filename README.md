# Amazon Data Analysis
On this project I examined Sales and Inventory Performance by using Stepwise Multiple Linear Regression.
You can watch the full presentation video of the project via this link : https://vimeo.com/570088696

## Objective:
This project aims to derive results that can be used for creating marketing strategies. 
Managing an Amazon seller account needs strong analytical tools to improve tactical strategies and increase sales traffic. Since the sellercentral account provides large historical datasets, it can be used for statistical analysis. In this project, inventory performance and sales history data will be examined to determine crucial effects on sold item quantity and inventory performance index.

## Featured Techniques:
Stepwise Multiple Linear Regression

## Introduction:

Main goal of the ecommerce team is to derive sales and keep the online marketplace accounts healthy. These processes are actually linked because a healthy account leads to good sales. Therefore the effort is divided into 2 sections: sales/marketing and inventory management. 

## A Glance to the Dataset:

__a)__ First part of the project is about inventory performance of Amazon fulfilled products. 
Amazon itself measures seller accounts inventory performance with a metric called IPI (Inventory Performance Index), it is a score out of 1000 and if the seller’s score falls below 500 their account is blocked from sending inventory to Amazon’s warehouse. There are 4 indicators that shape IPI score and there is no explained weighted scale of indicators and their impacts on the score. Which is the goal of this analysis, to figure what metric we should go after as a marketing team. Those indicators are:

* Excess inventory percentage: The percentage of your FBA units identified as excess.
* FBA sell-through: Your FBA rolling 90-day sell-through rate is the number of your units sold and shipped over the past 90 days divided by the average number of units available at fulfillment centers during that time.
* Stranded inventory percentage: The percentage of your FBA units currently stranded.
* FBA in-stock rate: Percentage of time your replenishable FBA products have been in stock for the last 30 days, weighted by the number of units sold in the last 60 days.
 
__b)__ Second part of the project aims to find out what are the significant parameters that affect the sales quantity/ sales volume for a product listing. There are basic requirements to upload a product on the Amazon website, but the key strategy is going beyond the standard application and adding improvements that make the listing stand out. When we apply improvements or experiment with AB testing, we want to know which approach works the best. This analysis is targeted to determine which one provides the higher sales. To achieve higher sales volume, these are the parameters we continuously work on: 
 
* INV: Inventory level
* Price: Item price
* Views: Total number of clicks received by the particular item
* Ratings: Average product evaluation score given by customer
* Content: Product page content quality score out of 10




## Content:

1. Linear Assumption Testing in Python for Inventory Performance
2. Inventory Performance Modal testing in R 
3. Linear Assumption Testing in Python for Sales Quantity
4. Sales Quantity Modal Testing in R
5. Views Analysis Overview in Python
6. Views Modal Testing in R
 
 
 
 
## Results: 
As a result of the Linear Modal analysis, it shows that Excess inventory percentage and FBA sell-through rate has a significant effect on IPI score. This outcome can be Interpreted as higher the  sales volume, healthier the inventory performance. 

This leads us to the second part of the project, how to get more sales?

The Applied model shows that Views and Quantity Sold have a clear linear relationship. The more the Views count the higher the sales. 

Here follows another research topic, what is affecting Views count? 

After applying the same methods on Views data, the variable that had a significant effect was Review Count. But the Adjusted R Square was only 0.30, which means this model only explains 30% of the impact on the Views count. This outcome points another direction, where we question how efficiently our product list shows up on customer search, so the customers can actually see the listing and click on it. This all depends on a strong keyword strategy, which will be examined in another project: NLP for Amazon Product Titles.

To sum up, good inventory performance and high sales volume feed each other, and to increase sales traffic we need to improve marketing strategies that will bring us high click counts and customer feedback.

## Data Source:
Amazon API via Reason Automation



