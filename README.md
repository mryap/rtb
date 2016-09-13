# Prediction Model for Dublin rental price movements

Using Azure Machine Learning studio and R’s Caret package to explores the use of data mining techniques to analyse the trend and understand the underlying influencing factors of Ireland property rental market. 

Transaction data from publicly available Private Residential Tenancies Board (PRTB) rent index from 2005 to 2015 were used and built prediction models using regression algorithms. 

# Data
Private Residential Tenancies Board (PRTB), Central Statistics Office (CSO), OECD data are extracted and concatenated together as a multi-variate dataset, with rental data as the predictable column. 
http://dx.doi.org/10.7910/DVN/HRKFN2 

# Machine Learning Algorithms Deploy
- Feature engineering
- Exploratory Analysis 
- Boosted Decision Tree Regression 
- Ordinary Least Squares Linear regression 

# Feature Selection
To construct effective features in the training data, 5 training datasets are constructed based on the same raw input data, but different additional features to each training set were added.
- Set A = Property Type + Location + Year + Rent features for the predicted rent
- Set B = Property Type + Location + Year + CPI + Rent features for the predicted rent
- Set C = Property Type + Location + Year + CPI + Price-Rent-Ratio + Rent features for the predicted rent 
- Set D = Property Type + Location + CPI + Price-Rent-Ratio + Vacancy Rates + Year + Rent features for the predicted rent 
- Set E = Property Type + Location + Year + CPI + Vacancy Rates + No. of Room + Rent features for the predicted rent

# Measuring Model Performance
<p align="center">
  <img src="https://github.com/mryap/rtb/blob/master/media/CnE4iSpWAAAcG7v.jpg?raw=true">
</p>

On a split training (70%) and test (30%) dataset, Boosted decision tree regression model is also the matching algorithm. 

| Split Data  | Algorithm  | RMSE  |  r2 |  
|---|---|---|---|---|
|  50/50 |  Boosted Decision Tree Regression | 343.3298  | 0.487419  |   
|  65/35 |  Boosted Decision Tree Regression | 347.0633  | 0.473526  |   
|  60/40 |  Boosted Decision Tree Regression | 358.6932  | 0.452571  |   
|  80/20 |  Boosted Decision Tree Regression | 367.1906  | 0.411125  |   
|  70/30 |  Boosted Decision Tree Regression | 344.0009  | 0.497633  |  

Adding additional features like Number of Bedrooms to the data on the same training split – 70/30 produce the following outcome that Linear Regression is the best model in terms of performance


# Evaluating the importance of the variables
Kuhn’s R caret package is use to calculate variable importance. The varImp function together with lm object class produces the following outcome. 
<p align="center">
  <img src="https://github.com/mryap/rtb/blob/master/media/Rplot.png?raw=true">
</p>

In order of permutation importance scores, results from Azure ML analysis also produce a similar ranking results 

|  Feature 	| Score  	|
|---	|---	|
|  PropertyType 	|   201.2722	|
|   Location	|   180.1229	|
|   CPI	|   65.83267	|
|   Price.Rent.Ratio	|  65.11127 	|
|   HousingStock	| 1.358679  	|
|   VacancyRate	|  0.828779 	|
|   NumberofBedrooms	|   0.005061	|
|   Year 	|   -0.02083	|

# CONCLUSION & FUTURE WORKS
AirBnB being cited as an influencing factor in the Irish rental market. For the next step, Dublin AirBnB data will be used to analyse the impact on the rental price movement. 

According to Kieran and Gerard, house prices depend on how much individuals can borrow from financial institutions, with the amount borrowed can be a proxy of their disposable income and the current mortgage rate. Hence, the inclusion of income and interest rates offer the possibility of adding characteristics to the regression model for the next iteration of this project. 

To further improve and enhance the predictions model to a more accurate level, this project is going to benefit from a domain expert knowledge on Ireland property market.
