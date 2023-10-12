import cv2
import numpy as np
import pyzbar.pyzbar as pyzbar

data = "00020101021230730016A000000677010112011501055350909121602063289950320SITPRAINFINTECH555555303764540520.005802TH5920PRAINFINTECH COMPANY6304A9F0"
index = [data[i:i+2] for i in range(0, len(data), 2)]
lines = [index[i:i+3] for i in range(0, len(index), 3)]
# str = last_index = index + 2
# order = data[index]
# str1 = data[index:last_index]
# str2 = data[last_index:last_index + 2]
num = "\n".join([f" ".join(line) for line in lines])
print(num)


# 00    02  01
# 01    02  12
# 30    73  0016A000000677010112011501055350909121602063289950320SITPRAINFINTECH555555303764540520.005802TH5920PRAINFINTECH COMPANY6304A9F0
# 00
# Loop #1   >> 00    02      2       02     >> last-index >> 6
# Loop #2   >> 01    16      16       1234567890123456
# dddddddddd