
setwd("D:/GIT/skripsi/R")
library(foreign, pos=4)
postes <- read.spss("D:/GIT/skripsi/SPSS/data/postes.sav", 
  use.value.labels=TRUE, max.value.labels=Inf, to.data.frame=TRUE)
colnames(postes) <- tolower(colnames(postes))
library(relimp, pos=4)
showData(postes, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80,
   maxheight=30)
{shapiro.test(postes$eksperimen)
} {shapiro.test(postes$kontrol)
}
