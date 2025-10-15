dataset = read.csv(file.choose())
#dataset =dataset[,3:5]
dataset$State= factor(dataset$State,
                         levels = c('New York','California','Florida'),
                         labels = c(1,2,3))

library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio =0.8)
training_set = subset(dataset,split == TRUE)
test_set = subset(dataset,split == FALSE)

#fitting multiple regression to the training set
regressor = lm(formula = Profit ~ .,
               data = training_set)
#predicting the test set results
y_pred = predict(regressor,newdata = test_set)