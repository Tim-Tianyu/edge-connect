import shutil
import os
import csv
import tqdm

# make sure you have download and unzip celeba
# create directory data/celeba/train
# create directory data/celeba/eval
# create directory data/celeba/test

with open('list_eval_partition.csv') as csvfile:
    reader = csv.DictReader(csvfile)
    with tqdm.tqdm(total=200000) as pbar_test:
        for row in reader:
            if row['partition'] == '0':
                file = "img_align_celeba/img_align_celeba/"+row["image_id"]
                if (os.path.isfile(file)):
                    shutil.move(file, "data/celeba/train/"+row["image_id"])
            elif row['partition'] == '1':
                file = "img_align_celeba/img_align_celeba/"+row["image_id"]
                if (os.path.isfile(file)):
                    shutil.move(file, "data/celeba/eval/"+row["image_id"])
            else:
                file = "img_align_celeba/img_align_celeba/"+row["image_id"]
                if (os.path.isfile(file)):
                    shutil.move(file, "data/celeba/test/"+row["image_id"])   
            pbar_test.update(1)