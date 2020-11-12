#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=48gb
#SBATCH --time=00:01:00
#SBATCH --job-name=x
#SBATCH --output=x-%j.out

cd /projects/kybu6659/templates/R/

module purge

echo "Loading Anaconda"
source /curc/sw/anaconda3/latest
echo "Loading environment"
# conda activate rstudio
conda activate r-spatial


Rscript template.R

