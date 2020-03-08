import numpy as np
import os

data = np.loadtxt('log_inpaint_20346.dat')
data.mean(axis=0)
print (data.mean(axis=0))
results = []
names = ["log_inpaint_20346.dat","log_inpaint_40692.dat","log_inpaint_61038.dat",
            "log_inpaint_81384.dat","log_inpaint_101730.dat","log_inpaint_122076.dat",
            "log_inpaint_142422.dat","log_inpaint_162768.dat","log_inpaint_183114.dat",
            "log_inpaint_203460.dat","log_inpaint_223806.dat","log_inpaint_244152.dat"]
for name in names:
    data=np.loadtxt(name)
    print(data.mean(axis=0))

#print (results)
