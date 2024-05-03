###k means clustering####
setwd("C:/Users/lenovo/OneDrive/Desktop/My Documents/programming/R language")
rm(list=ls())#to clear the environment
tripDetails=read.csv("tripDetails.csv",row.names = 1)#read.csv(file,row.names=1)
View(tripDetails)#view() for viewing the dataframe
str(tripDetails)# str(object)to get the structures
summary(tripDetails)#summary(object) to get the summary
#####kmeans() function######
#object=kmeans(x,centers,iter.max,nstart)
tripCluster<-kmeans(tripDetails,3)
tripCluster
####elbow method#### to compute the optimal value of k
k.max<-10#setting its max value
wss<-rep(NA,k.max)
nClust<-list()
for(i in 1:k.max){
  driveClasses<- kmeans(tripDetails,i)
  wss[i]<-driveClasses$tot.withinss
  nClust[[i]]<-driveClasses$size
}
plot(1:k.max,wss,type="b",pch=19,xlab="Number of clusters K",ylab="Total within-clusters sum of squares:Trips")
################
#K-means is an unsupervised algorithm

