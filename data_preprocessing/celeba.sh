mkdir data
mkdir data/celeba
mkdir data/celeba/train
mkdir data/celeba/test
mkdir data/celeba/eval
python ./data_preprocessing/celeba_train_test_split.py

mkdir datasets
python ./scripts/flist.py --path ./img_align_celeba/img_align_celeba --output ./datasets/celeba_train.flist
python ./scripts/flist.py --path ./data/celeba/test --output ./datasets/celeba_test.flist
python ./scripts/flist.py --path ./data/celeba/eval --output ./datasets/celeba_eval.flist

mkdir data/mask
mkdir data/mask/train
mkdir data/mask/test
mkdir data/mask/eval
python ./scripts/flist.py --path ./mask/testing_mask_dataset --output ./datasets/mask_test.flist