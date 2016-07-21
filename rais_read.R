# Rodando a RAIS
# Neylson Crepalde

setwd("~/Documentos/Neylson Crepalde/RAIS 2014")
###################################################
rais.head <- read.csv2("MG2014.txt", nrows = 10, fileEncoding = "latin1")
heading <- names(rais.head)
#############################################

library(ff)
library(ffbase)
system.time(rais <- read.table.ffdf(file="MG2014.txt",sep=";",dec=",",na.strings = c('{ñclass}','{ñ','{ñ class}','{ñ c'), 
                                    fileEncoding="latin1", header=T))
dim(rais)
rais[1,]
rais$target <- ffifelse(rais$V36 > 1000, 1L, 0L)

library(biglm)
biglinear <- biglm(V36~V19+V20, data=rais)
