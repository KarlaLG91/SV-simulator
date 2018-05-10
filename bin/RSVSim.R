# Reading arguments from shell
#
args = commandArgs(trailingOnly = TRUE)

#args[1]= path to genome
#args[2]= output directory
#args[3]= size of SVs
#args[4]= number of SV event (can be used for any type of event)
#args[5]= type of SV to generate; currently, the script uses conditionals to check what type of SV it will generate

# Loading the package RSVSim
#
library(RSVSim)

# Simulating SV
#
# for deletions:
if ( args[5] == "DEL" ) {
	simulateSV(output= args[2], genome= args[1], 
		chr=c("chr21", "chr22"),
		dels= as.numeric(args[4]), 
		size= as.numeric(args[3]), 
		repeatBias=FALSE, 
	## by commenting this argument, it should be set to default
	#	bpSeqize=150, 
		random=TRUE, 
		seed=666, 
		verbose=TRUE)
}

# For insertions
if ( args[5] == "INS" ) {
        simulateSV(output= args[2], genome= args[1],
                chr=c("chr21", "chr22"),
                ins= as.numeric(args[4]), ## <- THIS LINE changes depending on the type of SV requested
                size= as.numeric(args[3]),
	#	percCopiedIns=0,
                repeatBias=FALSE,
        #       bpSeqize=150,
                random=TRUE,
                seed=666,
                verbose=TRUE)
}

# For inversions
if ( args[5] == "INV" ) {
        simulateSV(output= args[2], genome= args[1],
                chr=c("chr21", "chr22"),
                invs= as.numeric(args[4]), ## <- THIS LINE changes depending on the type of SV requested
                size= as.numeric(args[3]),
                repeatBias=FALSE,
        #       bpSeqize=150,
                random=TRUE,
                seed=666,
                verbose=TRUE)
}

# For duplications
if ( args[5] == "DUP" ) {
        simulateSV(output= args[2], genome= args[1],
                chr=c("chr21", "chr22"),
                dups= as.numeric(args[4]), ## <- THIS LINE changes depending on the type of SV requested
                size= as.numeric(args[3]),
        #       maxDups=10,
                repeatBias=FALSE,
        #       bpSeqize=150,
                random=TRUE,
                seed=666,
                verbose=TRUE)
}

# For translocations
if ( args[5] == "TRA" ) {
        simulateSV(output= args[2], genome= args[1],
                chr=c("chr21", "chr22"),
                trans= as.numeric(args[4]), ## <- THIS LINE changes depending on the type of SV requested
                size= as.numeric(args[3]),
        #       percBalancedTrans=1,
                repeatBias=FALSE,
        #       bpSeqize=150,
                random=TRUE,
                seed=666,
                verbose=TRUE)
}
