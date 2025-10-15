dataset = read.csv(file.choose())
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
training_set = subset(dataset,split == TRUE)
test_set = subset(dataset,split == FALSE)

#simple linear regression

regressor = lm(formula = Salary ~ YearsExperience, data = training_set)

