getwd()
#1
setwd("C:\\Users\\IT24101727\\Desktop\\IT24101727")

Delivery_Times<-read.table("Exercise - Lab 05.txt",header = TRUE)
fix(Delivery_Times)
attach(Delivery_Times)

#2
names(Delivery_Times)<-c("delivery_time")
attach(Delivery_Times)

histogram<-hist(delivery_time,main = "Histogram for Deliver Times",breaks = seq(20, 70,length = 10),right = FALSE)

#3
#positively skewed

#4

breaks<-round(histogram$breaks)
breaks

freq<-histogram$counts
freq

cum.freq<-cumsum(freq)
new<-c()
for (i in 1:length(breaks)) {
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
  
}

plot(breaks, new, type = "l",main = "cumulative frequency polygon for delivery time",
     xlab = "delivery time (mins)",ylab = " cumulative frequency",ylim = c(0,max(cum.freq)))
