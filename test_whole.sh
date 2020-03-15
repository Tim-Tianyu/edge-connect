#!/bin/bash

mkdir checkpoints/celeba_whole/results
python test.py \
  --model 3 \
  --checkpoints ./checkpoints/celeba_whole --input ../edge-connect/data/celeba/test --output ./checkpoints/celeba_whole/results
