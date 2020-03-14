#!/bin/bash
conda activate edge

python train.py --model 1 --checkpoints ./checkpoints/celeba_edge
