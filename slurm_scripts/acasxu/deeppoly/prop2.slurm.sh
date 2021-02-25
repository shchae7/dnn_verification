#!/bin/bash  
#SBATCH  -J DPolyProp2
#SBATCH  -o DPolyProp2.%j.out
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
module load cuDNN/cuda/10.1/7.6.4.38
module load cuda/10.1

source ~/anaconda3/etc/profile.d/conda.sh
conda deactivate
source ~/anaconda3/bin/activate eran

export PATH=/home/shchae7/DeepPoly/bin/:$PATH
export LD_LIBRARY_PATH=/home/shchae7/DeepPoly/lib/:$LD_LIBRARY_PATH
export PYTHONPATH=/home/shchae7/DeepPoly:$PYTHONPATH

export GUROBI_HOME=/home/shchae7/DeepPoly/bin/gurobi900/linux64
export PATH=$GUROBI_HOME/bin:$PATH
export LD_LIBRARY_PATH=$GUROBI_HOME/lib:$LD_LIBRARY_PATH

export PYTHONPATH=/home/shchae7/DeepPoly/lib/eran/tf_verify:$PYTHONPATH
export PYTHONPATH=/home/shchae7/DeepPoly/lib/ELINA/python_interface:$PYTHONPATH
export PYTHONPATH=/home/shchae7/DeepPoly/lib/eran/ELINA/python_interface:$PYTHONPATH

date 

sh ~/DeepPoly/lib/eran/scripts/run_property2.sh

date

squeue --job $SLURM_JOBID

