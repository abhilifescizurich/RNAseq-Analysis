#Author: Abhilash
# This is a code for Analysis of RNA-Seq Data with R/Bioconductor

# Install and load all the packages we will need to analyse the data
source("https://bioconductor.org/biocLite.R")

biocLite("edgeR")
biocLite("limma")
biocLite("EDASeq")
biocLite("Glimma")
biocLite("gplots")
biocLite("org.Mm.eg.db")
biocLite("RColorBrewer")

library(edgeR)
library(limma)
library(EDASeq)
library(Glimma)
library(gplots)
library(org.Mm.eg.db)
library(RColorBrewer)

# Set the working directory which has all the files with read counts required for RNA seq analysis

setwd("~/Desktop/Abhilash/RNAseq_analysis/RNA_seq_results/")
fs <- dir(,".txt$")

names(fs) <- gsub(".txt","",fs)
names(fs) <- gsub("__","_",names(fs))

grp <- as.factor(gsub("_[1-3]","", names(fs)))

