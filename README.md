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
