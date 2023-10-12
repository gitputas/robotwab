import cv2
import numpy as np
import pyzbar.pyzbar as pyzbar

def decode(image):
    # Find QR codes in the image
    decodedObjects = pyzbar.decode(image)
    return decodedObjects

def getStrFromIndex(num1, num2):
    str_data = "00020101021230730016A000000677010112011501055350909121602063289950320SITPRAINFINTECH555555303764540520.005802TH5920PRAINFINTECH COMPANY6304A9F0"
    return str_data[num1:num2]

# Load image
image = cv2.imread('../testqr.png')
# print(image)
# Decode QR code
decodedObjects = decode(image)
# print(decodedObjects)   
# print(type(decodedObjects))
# # Print results
# for obj in decodedObjects:
#     print('Type : ', obj.type)
#     print('Data : ', obj.data, '\n')

# print('Data : ', decodedObjects[0].data, '\n')

dataqr = decodedObjects[0].data

name_byte = dataqr
name_str = name_byte.decode()
print(name_str)

# print(name_str[0:10])

# print(f"{name_str[0:2]} {name_str[2:4]} {name_str[4:6]}")
# print(f"{name_str[2:4]}")

# for str in name_str:
#     if str.isnumeric():
#         print(int(str))    
# 
name_str = "000201010212"
var01 = 0

for index in range(0, len(name_str), 1):
#   announce = name_str[index+2:index+4]
    last_index = index + 2
    str1 = name_str[index:last_index]
    str2 = name_str[last_index:last_index + 2]
    str3 = name_str[last_index:last_index + 2]
    num3 = index
    if str2.isnumeric():
        num3 = int(str2)
    
    last_index = index + 4
    # str3 = name_str[last_index:last_index + num3]
    # last_index = last_index + num3
    # var01 += last_index
    index = last_index

#   numnum = name_str[index+0:index+2]
    # print(f"{name_str[index:index+2]} {announce} {numnum}")
    print(f" {str1} {str2} {str3} ")

print(len(name_str))

str01 = getStrFromIndex(0, 6)
str02 = getStrFromIndex(6, 12)

print(f"{str01} {str02}")

# 00    02  01
# 01    02  12
# 30    73  0016A000000677010112011501055350909121602063289950320SITPRAINFINTECH555555303764540520.005802TH5920PRAINFINTECH COMPANY6304A9F0
# 00
# Loop #1   >> 00    02      2       02     >> last-index >> 6
# Loop #2   >> 01    16      16       1234567890123456
# dddddddddd