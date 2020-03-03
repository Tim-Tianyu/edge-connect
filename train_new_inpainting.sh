#!/bin/bash
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.bashrc
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.benv
source ~/.benv
conda activate edge

mkdir ./checkpoints/celeba_new_inpainting/models
mkdir ./checkpoints/celeba_new_inpainting/samples

python train.py --model 3 --checkpoints ./checkpoints/celeba_new_inpainting

