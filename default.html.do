#!/usr/bin/env Rscript

library(rmarkdown)

args <- commandArgs(trailingOnly=TRUE)
md  <- paste0(args[2], ".md")

system(paste("redo-ifchange", md))

render(md, output_file=basename(args[3]), quiet=TRUE)
