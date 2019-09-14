rm(list=ls())

setwd("C:/Users/vijay/Desktop/PROJECTS/Weed Experiment")
acid<-read.csv("Acid_assay_r.csv")
attach(acid)
names(acid)
str(acid)
as.numeric(IRIS)
library(plyr)
library(plyr)
library(ggplot2)
library(Rmisc)
library(grid)
library(ggplot2)
library(ggExtra)
library(grid)
library(reshape2)
weed <- summarySE(acid, measurevar= ("Lambs_quarter"), groupvars=c("rate", "time"), na.rm = FALSE, conf.interval = 0.95, .drop = TRUE)
weed
a<-ggplot(data=weed, aes(x=rate, y=Lambs_quarter, group = time)) +
  geom_line() + geom_point() +geom_line(aes(color=time))+ geom_point(aes(color=time))
  b<-a+theme(text = element_text(size=20))+labs(title="Lamb's quarters",x="Concentration (??g per lt)", y = "Mortality (%)")
  b                                                                                           
weed1 <- summarySE(acid, measurevar= ("Barnyard_grass"), groupvars=c("rate", "time"), na.rm = FALSE, conf.interval = 0.95, .drop = TRUE)
weed1                                  
                                 
c<-ggplot(data=weed1, aes(x=rate, y=Barnyard_grass, group=time)) +
  geom_line() + geom_point() +geom_line(aes(color=time))+
  geom_point(aes(color=time))
d<-c+theme(text = element_text(size=20))+labs(title="Barnyardgrass",x="Concentration (??g per lt)", y = "Mortality (%)")
d  

weed2 <- summarySE(acid, measurevar= ("Yellow_nutsege"), groupvars=c("rate", "time"), na.rm = FALSE, conf.interval = 0.95, .drop = TRUE)
weed2                                  

e<-ggplot(data=weed2, aes(x=rate, y=Yellow_nutsege, group=time)) +
  geom_line() + geom_point() +geom_line(aes(color=time))+
  geom_point(aes(color=time))
f<-e+theme(text = element_text(size=20))+labs(title="Yellow nutsege",x="Concentration (??g per lt)", y = "Mortality (%)")
  
f
