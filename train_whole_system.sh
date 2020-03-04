#!/bin/bash
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.bashrc
echo ". /home/s1655829/miniconda2/etc/profile.d/conda.sh" >> ~/.benv
source ~/.benv
conda activate edge

mkdir ./checkpoints/whole_system/models
mkdir ./checkpoints/whole_system/samples

cp ./checkpoints/whole_system/configs/config3.yml ./checkpoints/whole_system/config.yml
python train.py --model 3 --checkpoints ./checkpoints/whole_system

mv ./checkpoints/whole_system/models ./checkpoints/whole_system/first_models
mv ./checkpoints/whole_system/samples ./checkpoints/whole_system/first_samples

mkdir ./checkpoints/whole_system/models
mkdir ./checkpoints/whole_system/samples

cp ./checkpoints/whole_system/configs/config4.yml ./checkpoints/whole_system/config.yml

python train.py --model 4 --checkpoints ./checkpoints/whole_system
