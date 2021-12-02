#!/bin/bash

# the SBATCH comment lines are parsed by the job schedule (SLURM)
# the uncommented lines are what runs on the cluster after scheduling

# Request an hour of runtime (days-hours:minutes:seconds)
#SBATCH --time=0-01:00:00

# Default resources are 1 core with 2.8GB of memory.
# Use more memory (4GB):
#SBATCH --mem=4G
# and two cores
#SBATCH -c 2

# Specify a job name:
#SBATCH -J sample_script

# Specify output and error files (%j will be the JobID)
#SBATCH -o job-%j.out
#SBATCH -e job-%j.err

#----- End of slurm commands ----

# sometimes we want to load specific software for our jobs
# here we do the most recent version of python3 on Oscar CCV
module load python/3.9.0
# then call the python script like normal
python simple_script.py


