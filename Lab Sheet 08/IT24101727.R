setwd("C:\\Users\\IT24101727\\Desktop\\IT24101727")

#Question 1
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)


#Calculate the population mean and population standard deviation of the laptop bag weight
popmean<-mean(Weight.kg.)
popvariance<-var(Weight.kg.)
popsd<-sd(Weight.kg.)

##Question 2
#Draw 25 random samples of size 6 (with replacement)
samples<-c()
k<-c()

for (i in 1:25) {
  w<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,w)
  k<-c(k,paste('W',i))
}

colnames(samples)=k


#calculate the sample mean and sample standard deviation for each sample
w.means<-apply(samples,2,mean)
w.means
w.sd<-apply(samples, 2, sd)
w.sd
w.vars<-apply(samples, 2, var)




#Question 3
#Calculate the mean and standard deviation of the 25 sample means
samplemean<-mean(w.means)
samplemean
samplesd<-sd(w.vars)
samplesd

#state the relationship of them with true mean and true standard deviation
popmean
samplemean

truesd=sqrt(popvariance/6)
truesd
samplesd
