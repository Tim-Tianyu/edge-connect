#!/bin/bash
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.bashrc
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.benv
source ~/.benv
conda activate edge


python ./scripts/fid_score.py --data-path celeba_resize/test --output-path ./checkpoints/celeba_edge/results --gpu [0,1,2,3,4,5,6,7] 

