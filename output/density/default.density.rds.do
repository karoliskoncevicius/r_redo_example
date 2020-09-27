#!/usr/bin/env Rscript

outfile <- commandArgs(trailingOnly = TRUE)[3]
feed    <- strsplit(outfile, "\\.")[[1]][1]

infile <- paste(feed, "subdata", "rds", sep=".")
infile <- file.path("..", "subdata", infile)
system(paste("redo-ifchange", infile))
rawdata <- readRDS(infile)

dens <- density(rawdata$weight)

saveRDS(dens, file = outfile)
