# -*- coding: utf-8 -*-
# @author:    mahnooshsadeghi
# github:     https://github.com/mahnooshs
# This code imputes missing heart rate data with Kalman Filtering method

library(data.table)
library(imputeTS)

###Due to some reasons it cannot impute around 10 files. Those files are implemented separately
i<- 1
p<- list.files("<path/to/file>", pattern="*.csv", full.names=TRUE)

setwd("<path/to/wd>")
for (i in 1:98) {
  #reading in data
  df<- fread(filename <- p[[i]])
  df$hr[df$hr==0]<-NA
  df$hr=na_kalman(df$hr, model = "StructTS", smooth = TRUE, nit = -1, maxgap = 5)
  N=sprintf('Participant.%d.csv', i)
  write.csv(df, file=N)
}
