#!/usr/bin/env Rscript
library(rtracklayer)
gff <- import(commandArgs(T)[1], format='GFF')
tabular <- as.data.frame(gff)
write.table(tabular, file = commandArgs(T)[2], quote=FALSE, sep="\t", row.names=FALSE)

