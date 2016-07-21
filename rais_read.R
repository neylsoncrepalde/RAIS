# Rodando a RAIS
# Neylson Crepalde

#library(readr)

setwd("~/Documentos/Neylson Crepalde/RAIS 2014")
###################################################

#rais <- read_csv2("MG2014.txt", col_names = T, n_max = 10000)
#rais[5894:5900,]
#############################################

library(ff)
system.time(rais <- read.table.ffdf(file="MG2014.txt",sep=";",dec=",",na.strings = c('{ñclass}','{ñ','{ñ class}','{ñ c'), fileEncoding="latin1"))


