
setwd("D:/GIT/skripsi/R")
library(foreign, pos=4)
pretes <- read.spss("D:/GIT/skripsi/SPSS/data/pretes.sav", 
  use.value.labels=TRUE, max.value.labels=Inf, to.data.frame=TRUE)
colnames(pretes) <- tolower(colnames(pretes))
{shapiro.test(pretes$eksperimen)
} {shapiro.test(pretes$kontrol)
}
