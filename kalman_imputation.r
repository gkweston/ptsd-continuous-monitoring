# -*- coding: utf-8 -*-
# @author:    mahnooshsadeghi
# github:     https://github.com/mahnooshs
# This code imputes missing heart rate data with Kalman Filtering method

library(data.table)
library(imputeTS)

###Due to some reasons it cannot impute around 10 files. Those files are implemented separately
i<- 1
p<- list.files("/Users/gkweston/Desktop/workingFiles/acelab/proj2/Pre Kalman Imputed/", pattern="*.csv", full.names=TRUE)

setwd("/Users/gkweston/Desktop/workingFiles/acelab/proj2/Kalman Imputed/")
for (i in 1:98) {
  #reading in data
  df<- fread(filename <- p[[i]])
  df$hr[df$hr==0]<-NA
  df$hr=na_kalman(df$hr, model = "StructTS", smooth = TRUE, nit = -1, maxgap = 5)
  N=sprintf('Participant.%d.csv', i)
  write.csv(df, file=N)
}