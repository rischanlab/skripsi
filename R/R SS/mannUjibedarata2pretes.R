
setwd("D:/GIT/skripsi/R")
load("D:/GIT/skripsi/R/pretes.RData")
qqPlot(pretes$eksperimen, dist="norm")
qqPlot(pretes$kontrol, dist="norm")
library(relimp, pos=4)
showData(pretes, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80,
   maxheight=30)
load("D:/GIT/skripsi/R/dataanalisis.RData")
showData(dataanalisis, placement='-20+200', font=getRcmdr('logFont'), 
  maxwidth=80, maxheight=30)
tapply(dataanalisis$pretes, dataanalisis$group, median, na.rm=TRUE)
wilcox.test(pretes ~ group, alternative='two.sided', exact=TRUE, 
  correct=FALSE, data=dataanalisis)
tapply(dataanalisis$postes, dataanalisis$group, median, na.rm=TRUE)
wilcox.test(postes ~ group, alternative='two.sided', exact=TRUE, 
  correct=FALSE, data=dataanalisis)

