#!/bin/bash

nextflow run .\
 -with-singularity /gpfs/hpc/home/a72094/projects/singularity_temp/NFcore_SingCont_V1.1/nfcore-rnaseq-1.1.img\
 --reads '/gpfs/hpc/home/a72094/datasets/controlled_access/Schwartzentruber_2018_Neurons/temp_Schwarz/SAMEA*/SAMEA*{1,2}.fastq.gz'\
 --genome GRCh38\
 -profile ut_hpc_slurm\
 --skip_qc
 # -r 1.1\
 # --clusterOptions '-p main'\
 # -resume //used for second run if want to continue from previous step, uses cache
