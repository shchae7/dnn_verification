#!/bin/bash  
#SBATCH  -J RplexProp8 
#SBATCH  -o RplexProp8.%j.out
#SBATCH  -t 1-00:00:00
#SBATCH  --nodes=1 
#SBATCH  --ntasks=2
#SBATCH  --tasks-per-node=2
#SBATCH  --cpus-per-task=3

set echo on

cd  $SLURM_SUBMIT_DIR
echo "SLURM_SUBMIT_DIR=$SLURM_SUBMIT_DIR"

srun -l /bin/hostname
srun -l /bin/pwd
srun -l /bin/date

module  purge
module  load  postech

date 

~/ReluplexCav2017/scripts/run_property8.sh

date

squeue --job $SLURM_JOBID

