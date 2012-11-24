
setwd("D:/GIT/skripsi/R")
load("D:/GIT/skripsi/R/dataanalisis.RData")
library(relimp, pos=4)
showData(dataanalisis, placement='-20+200', font=getRcmdr('logFont'), 
  maxwidth=80, maxheight=30)
summary(dataanalisis)
library(abind, pos=4)
library(e1071, pos=4)
numSummary(dataanalisis[,c("postes", "pretes")], groups=dataanalisis$group, 
  statistics=c("mean", "sd", "IQR", "quantiles"), quantiles=c(0,.25,.5,.75,1))
showData(dataanalisis, placement='-20+200', font=getRcmdr('logFont'), 
  maxwidth=80, maxheight=30)
# Table for postes:
tapply(dataanalisis$postes, list(group=dataanalisis$group), min,max, 
  na.rm=TRUE)
# Table for pretes:
tapply(dataanalisis$pretes, list(group=dataanalisis$group), min,max, 
  na.rm=TRUE)
# Table for postes:
tapply(dataanalisis$postes, list(group=dataanalisis$group), min, na.rm=TRUE)
# Table for pretes:
tapply(dataanalisis$pretes, list(group=dataanalisis$group), min, na.rm=TRUE)
# Table for postes:
tapply(dataanalisis$postes, list(group=dataanalisis$group), max, na.rm=TRUE)
# Table for pretes:
tapply(dataanalisis$pretes, list(group=dataanalisis$group), max, na.rm=TRUE)

