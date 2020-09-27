#!/usr/bin/env Rscript

outfile <- commandArgs(trailingOnly = TRUE)[3]

saveRDS(chickwts, file = outfile)
