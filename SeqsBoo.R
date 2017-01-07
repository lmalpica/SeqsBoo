library(tidyr)
library(plyr)
library(dplyr)
require("reshape2")


ncol <- max(count.fields("data/otu_blast_seqs_euk_select.txt", sep = "\t"))
seqs_otus <- read.table("data/otu_blast_seqs_euk_select.txt", fill=TRUE, col.names=1:ncol)
list_otus <- read.table("data/otu_blast_select_euk_list.txt")

#subsetting otus
reshaped_seqs <- melt(seqs_otus, id.vars = "X1")



