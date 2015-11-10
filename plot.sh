#!/usr/bin/env Rscript

results <- read.csv("results.csv", header=TRUE, sep=",", as.is=TRUE)

pdf("results.pdf")
barplot(results$Iterations, names.arg=results$Language, horiz=TRUE, las=1, cex.names=0.5, border=NA)
title("benchmark_loop")
