mkdir data
mkdir data/celeba
mkdir data/celeba/train
mkdir data/celeba/test
mkdir data/celeba/eval
python ./data_preprocessing/celeba_train_test_split.py

mkdir datasets
python ./scripts/flist.py --path ./data/celeba/train --output ./datasets/celeba_train.flist
python ./scripts/flist.py --path ./data/celeba/test --output ./datasets/celeba_test.flist
python ./scripts/flist.py --path ./data/celeba/eval --output ./datasets/celeba_eval.flist