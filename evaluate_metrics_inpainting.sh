#!/bin/bash
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.bashrc
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.benv
source ~/.benv
conda activate edge


python ./scripts/metrics.py --data-path celeba_resize/test --output-path ./checkpoints/celeba_inpainting/results >eval_metrices_inpainting.txt
