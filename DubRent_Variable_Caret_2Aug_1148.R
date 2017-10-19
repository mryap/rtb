library(caret)

# ??createDataPartition
# ?train
# ?expand.grid
# ??varImp showcases variable importance of the variables used in the final model.
# ??defaultSummary
# setwd("C:/Users/mryapss/Dropbox/!Project")

#use read.csv function to read the data from CSV file to a data frame
#rtb_drl3.csv 
#Features:Year, Location, PropertyType, NumberofBedrooms, Rent, CPI, Price-Rent-Ratio, VacancyRate, HousingStock

rtb <- read.csv("rtb_drl3.csv")

#set seed for reproducibility before data partion

set.seed(123) and set.seed(234) 

# Data Loading and Splitting
# 80% train data
trainIndex <- createDataPartition(rtb$Rent, p = .8,
                                  list = FALSE,
                                  times = 1)

head(trainIndex)

rtbTrain <- rtb[ trainIndex,]
rtbTest  <- rtb[-trainIndex,]

#dev<-mtcars[split,]
#val<-mtcars[-split,]

# Model Building and Tuning
lmFit<-train(Rent~., data = rtbTrain, method = "lm")
summary(lmFit)

ctrl<-trainControl(method = "cv",number = 10)

lmCVFit<-train(Rent ~ ., data = rtb, method = "lm", trControl = ctrl, metric="Rsquared")

summary(lmCVFit)

# Model Diagnostics and Scoring
residuals<-resid(lmFit)

predictedValues<-predict(lmFit)

plot(dfTrain$Rent,residuals)

abline(0,0)

plot(dfTrain$Rent,predictedValues)

varImp(lmFit)
#plot(varImpFit, main = "Variable Importance of Top 12", top = 12)

plot(varImp(lmFit), main = "20 most important variables shown (out of 178)", top = 20)

predictedVal<-predict(lmFit,rtbTest)


#
modelvalues<-data.frame(obs = dfTrain$Rent, pred=predictedVal)

defaultSummary(modelvalues)

#http://www.analyticsvidhya.com/blog/2014/12/caret-package-stop-solution-building-predictive-models/

