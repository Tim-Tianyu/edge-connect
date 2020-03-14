import numpy as np
import os
import argparse

parser=argparse.ArgumentParser()
parser.add_argument('--path',type=str,help='path to the results')
args=parser.parse_args()
ext={'.DAT'}
for root,dirs,files in os.walk(args.path):
    print ('loading '+root)
    for file in files:
        if os.path.splitext(file)[1].upper() in ext:
            data=np.loadtxt(os.path.join(root,file))
            print(data.mean(axis=0))

