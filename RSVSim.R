library(RSVSim)
#Genome <- (file= "/home/karla/SV-simulator/test/reference/human_g1k_v37.fasta.gz")
#ReapeatMasker <- (file= "")
simulateSV(output=".", genome=Genome, dels=10, ins=10, inv=10, dups=10, trans=10,
           sizeDels=10000, sizeIns=10000, sizeInvs=10000, sizeDups=10000,
           repeatBias=FALSE, bpFlankSize=50, percSNPs=0.25, indelProb=0.5, maxIndelSize=10)
