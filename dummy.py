import csv

all_lefteye = []
all_righteye = []
all_nose = []
all_leftmouth = []
all_rightmouth = []
size = 176
dict = {}

with open ('list_landmarks_align_celeba.csv') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        lefteye_x=float(row['lefteye_x'])/size
        lefteye_y=float(row['lefteye_y'])/size
        lefteye = (lefteye_x,lefteye_y)
        all_lefteye.append(lefteye)

        righteye_x=float(row['righteye_x'])/size
        righteye_y=float(row['righteye_y'])/size
        righteye = (righteye_x,righteye_y)
        all_righteye.append(righteye)

        nose_x=float(row['nose_x'])/size
        nose_y=float(row['nose_y'])/size
        nose = (nose_x,nose_y)
        all_nose.append(nose)

        leftmouth_x=float(row['leftmouth_x'])/size
        leftmouth_y=float(row['leftmouth_y'])/size
        leftmouth=(leftmouth_x,leftmouth_y)
        all_nose.append(leftmouth)

        rightmouth_x=float(row['rightmouth_x'])/size
        rightmouth_y=float(row['rightmouth_y'])/size
        rightmouth=(rightmouth_x,rightmouth_y)
        all_rightmouth.append(rightmouth)

        landmarks = [lefteye,righteye,nose,leftmouth,rightmouth]
        dict[row['image_id']] = landmarks

    print (dict.keys()[:5])
    print (dict.values()[:5])

