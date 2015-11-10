#!/usr/bin/env Rscript

require(PerformanceAnalytics)

results <- read.csv("results.csv", header=TRUE, sep=",", as.is=TRUE)

# Order the results, make it look fancy.
ordered <- results[order(results$Iterations),]
rordered <- apply(ordered, 2, rev)

pdf("results.pdf")

# Bar Plot, speed representation
barplot(ordered$Iterations, names.arg=ordered$Language, horiz=TRUE, las=1, cex.names=0.5, border=NA)
title("Visual Comparison")

# Table, contains versions and stuffs too.
#PerformanceAnalytics:::textplot(results, halign="center", valign="top", row.valign="center")
PerformanceAnalytics:::textplot(rordered, halign = "center", valign = "top", row.valign="center", mar = c(0,0,3,0)+0.1)

