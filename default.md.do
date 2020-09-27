#!/usr/bin/env Rscript

library(knitr)

args <- commandArgs(trailingOnly=TRUE)
rmd  <- paste0(args[2], ".rmd")

system(paste("redo-ifchange", rmd))

opts_knit$set(root.dir=getwd())
opts_knit$set(base.dir=dirname(args[2]))
opts_chunk$set(fig.path=file.path("figures/"))

opts_chunk$set(error=FALSE)

opts_chunk$set(dev='svg')
opts_chunk$set(fig.cap="")
opts_chunk$set(include=TRUE)
opts_chunk$set(echo=FALSE)

invisible(knit(rmd, output=stdout(), quiet=TRUE))
