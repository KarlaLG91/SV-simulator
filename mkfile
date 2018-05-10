MKSHELL=/bin/bash

# Load configurations form file
< config.mk

# Simulate SV in fasta file format.
#
results/%:: data/%.fa
	set -x
	mkdir -p $target.build
	Rscript --vanilla bin/RSVSim.R $prereq $target.build $SV_size $SV_number $SV_TYPE \
	&& mv $target.build $target"_$SV_TYPE" ## <- THIS LINE RENAMES THE OUTPUT DIR TO THE SVTYPE REQUESTED BY THE CONFIG.MK

### Add a "clean" recipe to quickly remove results directory
### Use with care!!
clean:V:
	rm -r results/
