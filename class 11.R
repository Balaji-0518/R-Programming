dataset <- read.csv("mall.csv")
x <- dataset[4:5]

set.seed(6)
wcss <- vector()
for(i in 1:10) wcss[i] <- sum(kmeans(x,i)$withinss)
plot(1:10 , wcss, type="b", main = paste('Clusters of clients'), Xlab ="Numbers of clusters", ylab = "WCSS")


set.seed(29)
kmeans <- kmeans(x, 5, iter.max = 300, nstart = 10)


library(cluster)
clusplot(x,
         kmeans$cluster,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels =2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of clients'),
         xlab = "annual Income",
         ylab = "spending score")