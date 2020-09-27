#!/usr/bin/env Rscript

outfile <- commandArgs(trailingOnly = TRUE)[3]
feed    <- strsplit(outfile, "\\.")[[1]][1]

system("redo-ifchange ../raw/rawdata.rds")
rawdata <- readRDS("../raw/rawdata.rds")

subdata <- rawdata[rawdata$feed == feed, ]

saveRDS(subdata, file = outfile)
