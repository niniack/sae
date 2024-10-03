#!/bin/bash

#Define the resource requirements here using #SBATCH
#SBATCH -c 8
#SBATCH -t 8:00:00
#SBATCH -p nvidia
#SBATCH --gres=gpu:1
#SBATCH -q ebrainccs

module load miniconda

#Add the lines for running your code/application
source ~/startup.sh ~/work/ksae

#Execute the code
python ~/work/sae/e2e_sae/scripts/train_tlens_saes/run_train_tlens_saes.py ~/work/sae/e2e_sae/scripts/train_tlens_saes/gpt2_local.yaml > output.txt