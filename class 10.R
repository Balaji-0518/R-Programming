setwd("C:\\Users\\ece-lab\\Desktop\\data science 3rd year")
dataset = read.csv(file.choose())
dataset =dataset[,3:5]

dataset$Purchased = factor(dataset$Purchased, levels =c(0,1))

library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio =0.75)
training_set = subset(dataset,split == TRUE)
test_set = subset(dataset,split == FALSE)

training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])


library(class)
y_pred = knn(train = training_set[, -3],
             test = test_set[, -3],
             cl = training_set[, 3],
             k = 5)

cm = table(test_set[, 3], y_pred)

install.packages("ElemStatLearn")
library(remotes)


library(ElemStatLearn)
set = training_set
X1 = seq(min(Set[, 1]) -1, max(set[, 1]) - 1,by = 0.01)
X2 = seq(min(set[, 2]) -1, max(set[, 2]) - 1,by = 0.01)
grid_Set = expand.grid(X1, X2)
colnames(grid_Set) = c('Age', 'EstimatedSalary')
y_grid =  knn(train = training_set[, -3],
              test = grid_Set,
              cl = training_set[, 3],
              k = 5)

plot(Set[,-3],
     main = 'K-NN (Training set)',
     xlab = 'Age', ylab ='Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid),Length(X1), Length(X2)), add = TRUE)
points(grid_Set, pch = '.', col = ifelse(y_pred == 1, 'springgreen3', 'tomato'))
points(Set,pch = 21,bg = ifelse(Set[, 3] == 1, 'green4', 'red3'))

library(ElemStatLearn)
set = test_set
X1 = seq(min(Set[, 1]) -1, max(set[, 1]) - 1,by = 0.01)
X2 = seq(min(set[, 2]) -1, max(set[, 2]) - 1,by = 0.01)
grid_Set = expand.grid(X1, X2)
colnames(grid_Set) = c('Age', 'EstimatedSalary')
y_grid =  knn(train = training_set[, -3],
              test = grid_Set,
              cl = training_set[, 3],
              k = 5)

plot(Set[,-3],
     main = 'K-NN (Test set)',
     xlab = 'Age', ylab ='Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid),Length(X1), Length(X2)), add = TRUE)
points(grid_Set, pch = '.', col = ifelse(y_pred == 1, 'springgreen3', 'tomato'))
points(Set,pch = 21,bg = ifelse(Set[, 3] == 1, 'green4', 'red3'))
