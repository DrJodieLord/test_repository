args <- commandArgs(TRUE)
table1 <- args[1]
table2 <- args[2]
pheno <- args[3]

library(dplyr)

test1<-read.table(paste(table1, sep=""), header=T)
test2<-read.table(paste(table2, sep=""), header=T)

new1<-full_join(test1, test2)

new2<-new1[,c(15,1,4,8,12,3,7,11,5,9,13,2,6,10)]

write.table(new2, paste(pheno,"test_git.txt", sep="_"), sep="\t", row.names=F, col.names=T, quote=F)
