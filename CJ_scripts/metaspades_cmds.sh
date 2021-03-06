#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --time=16:00:00
#SBATCH --cpus-per-task=64
#SBATCH --mem=998GB
#SBATCH --partition=largemem


# TIME: 4:30 took the sample thorugh the read correction and part of K21. 
# 10:00 took the sample through K21 through K55 just barely. A safe time is 16:00 per schedule
module load spades

sample=CJ_V2_S8
output_dir=/project/thrash_89/db/EAGER_metaG_for_ck/${sample}_investigation/spades_assembly/
file=/project/thrash_89/db/EAGER_metaG_for_ck/${sample}_investigation/sickle_trimmed/${sample}_all_trimmed.fastq

metaspades.py --12 $file -o $output_dir --memory 998 -t 64
