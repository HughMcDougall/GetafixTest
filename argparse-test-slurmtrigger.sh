#!/bin/bash
#SBATCH --job-name=getafixtestjob
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=0-00:05:00
#SBATCH --array=1-2

# Load the necessary modules
module load anaconda3/5.2.0
eval "$(conda shell.bash hook)"
conda activate getafix_test_conda

# Change to the directory where your Python script is located
cd /data/s4320200/getafixtest

# Run your Python script with SLURM_ARRAY_TASK_ID as argument
python argparse-test.py -a $SLURM_ARRAY_TASK_ID > test_output_no_$SLURM_ARRAY_TASK_ID.txt