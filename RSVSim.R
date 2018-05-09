library(RSVSim)
library(RSVSim)
simulateSV(output="/media/genomics/disco1/klozano.bkp/results/", \
           genome="/media/genomcs/disco1/klozano.bkp/reference/hg19/hg19.fa" \
           chr=c("chr21", "chr22"), dels=1, ins=1, invs=1, dups=1, \
           trans=1, size=1000, maxDups=10, percCopiedIns=0, \
           percBalancedTrans=1, repeatBias=FALSE, bpSeqSize=150, \
           random=TRUE, seed=666, verbose=TRUE)
