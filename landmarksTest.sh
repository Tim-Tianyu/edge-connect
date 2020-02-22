#!/bin/bash
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.bashrc
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.benv
source ~/.benv
conda activate edge

python test.py \
  --model 3 \
  --checkpoints ./checkpoints/celeb --input ../edge-connect/data/celeba/test --mask ../edge-connect/mask/testing_mask_dataset --output ./checkpoints/celeb/results_celeba_dummy
