#!/bin/bash

#Define the resource requirements here using #SBATCH
#SBATCH -c 8
#SBATCH -t 8:00:00
#SBATCH -p nvidia
#SBATCH --gres=gpu:a100:1
#SBATCH -q ebrainccs

module load miniconda

#Add the lines for running your code/application
conda deactivate
conda activate mechinterp

#Execute the code
cd ~/work/sae/
python dictionary_learning/scripts/train_tlens_saes/run_train_tlens_saes.py dictionary_learning/scripts/train_tlens_saes/gpt2_local.yaml > output.txt
# exec_nb analysis/basic.ipynb --dest analysis/output.ipynb