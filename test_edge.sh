#!/bin/bash

mkdir checkpoints/celeba_edge/results
python test.py \
  --model 3 \
  --checkpoints ./checkpoints/celeba_edge --input ../edge-connect/data/celeba/test --output ./checkpoints/celeba_edge/results
