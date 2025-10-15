setwd("C:\\Users\\ece-lab\\Desktop\\E0223006_R_Studio")
getwd()

n<-read.csv("Social_Network_Ads.csv")
n=n[,3:5]

library(caTools)
set.seed(123)
split = sample.split(n$Purchased, SplitRatio = 0.75)
training_set = subset(n,split == TRUE)
test_set = subset(n,split == FALSE)

#Feature Scaling 
training_set[, 1:2] = scale(training_set[, 1:2])
test_set[, 1:2] = scale(test_set[, 1:2])

#Fitting logistic regression to the training set 
classifier = glm(formula = Purchased ~ .,
                 family = binomial,
                 data = training_set)
#Predicting the Test set results 
prob_pred = predict(classifier, type = 'response', newdata = test_set[-3])
y_pred = ifelse(prob_pred > 0.5,1,0)

# Confusion matrix
cm = table(test_set[,3],y_pred)
