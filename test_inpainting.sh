#!/bin/bash
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.bashrc
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.benv
source ~/.benv
conda activate edge

python test.py \
  --model 3 \
  --checkpoints ./checkpoints/celeba_inpainting --input ../edge-connect/data/celeba/test --output ./checkpoints/celeba_inpainting/results_celeba_dummy
