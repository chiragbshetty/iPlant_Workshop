# ggplot learning script
# Chirag Shetty
# February 22, 2015

install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

myplot <- ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width))
summary(myplot)

myplot + geom_point(size=3)

ggplot(data=iris, aes(Sepal.Length, Sepal.Width, color=Species))+geom_point(aes(shape=Species),size=3)

d2<-diamonds[sample(1:dim(diamonds)[1],1000),]

ggplot(data=d2,aes(carat,price,color=color))+geom_point(size=3)
