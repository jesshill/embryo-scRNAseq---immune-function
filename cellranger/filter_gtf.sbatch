#!/usr/bin/env bash

#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --time=01:00:00
#SBATCH --partition=amilan
#SBATCH --job-name=filter_gtf
#SBATCH --output=%x.%j.log

 
set -e

module purge

export PATH="/pl/active/onishimura_lab/PROJECTS/JessicaH/scRNAseq_mixed_stage_embryos_2024/cellranger-8.0.1:$PATH"

source /curc/sw/anaconda3/latest 
conda activate scRNAseq


# script

cmd="cellranger mkgtf \
Caenorhabditis_elegans.WBcel235.112.gtf \
Caenorhabditis_elegans.WBcel235.112.filtered.gtf \
--attribute=gene_biotype:protein_coding"

echo $cmd
eval $cmd



