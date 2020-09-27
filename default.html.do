#!/usr/bin/env Rscript

library(rmarkdown)

args <- commandArgs(trailingOnly=TRUE)
rmd  <- paste0(args[2], ".Rmd")

system(paste("redo-ifchange", rmd))

render(rmd, output_file=basename(args[3]), quiet=TRUE)
