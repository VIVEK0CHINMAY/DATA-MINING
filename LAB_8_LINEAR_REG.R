# MULTIPLE LINEAR REGRESSION

# INSTALLING PACKAGES
install.packages("caTools")
library(caTools)

# LOADING DATASET
mtcars
summary(mtcars)
head(mtcars)

# SPLITTING THE DATASET
split=sample.split(mtcars$mpg,SplitRatio = 0.7)
train=subset(mtcars,split==TRUE)
test=subset(mtcars, split==FALSE)

# BULDING MODEL
model<-lm(mpg~disp+hp+wt,data=mtcars)
summary(model)

# PREDICT NEW DATA
new_data=data.frame(disp=180,hp=100,wt=8)
predicted=predict(model,newdata = new_data)
print(predicted)

print(model)

# VISULIZATION ACTUAL VS PREDICTED

plot(mtcars$mpg, mtcars$predicted,
     xlab = "Actual MPG",
     ylab = "Predicted MPG",
     main = "Actual vs Predicted MPG",
     pch = 19, col = "blue")

abline(a = 0, b = 1, col = "red", lwd = 2)

#  LOGISTIC REGRESSION

install.packages("dplyr")
library(dplyr)
install.packages("ROCR")
library(ROCR)

# MODEL FITTING
model<-glm(vs~disp+wt,data=train, family = "binomial")
summary(model)
print(model)

# PREDICT NEW DATA
new_data=data.frame(disp=180,wt=8)
predicted=predict(model,newdata = new_data)
print(predicted)

# PREDICT TEST DATA
predicted_reg=predict(model,test,type ="response")
print(predicted_reg)
predicted_reg=predict(model,data=test$model)
print(predicted_reg)


# ROC CURVE
ROCpred=prediction(predicted,test$vs)
ROCpred=performance(ROCpred,measure = )

