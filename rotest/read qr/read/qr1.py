import cv2
import numpy as np
import pyzbar.pyzbar as pyzbar

def decode(image):
    # Find QR codes in the image
    decodedObjects = pyzbar.decode(image)
    return decodedObjects

# def getStrFromIndex(num1, num2):
#     str_data = "00020101021230730016A000000677010112011501055350909121602063289950320SITPRAINFINTECH555555303764540520.005802TH5920PRAINFINTECH COMPANY6304A9F0"
#     return str_data[num1:num2]

# Load image
image = cv2.imread('../testqr.png')
decodedObjects = decode(image)
dataqr = decodedObjects[0].data
name_byte = dataqr
name_str = name_byte.decode()
print(name_str)

# orders = ["Order 1", "Order 2", "Order 3"]
index = 0
var01 = 0

while index in range (0, len(name_str), 2):
    order = name_str[index]
    last_index = index + 2
    str1 = name_str[index:last_index]
    str2 = name_str[last_index:last_index + 2]
    
    print(f"{str1} {str2} ")
    index +=4
    # str = name_str[str2 + 2]
    # num3 = index
    # if str2.isnumeric():
    #     num3 = int(str2)
    # last_index = index + 4
    # str3 = name_str[last_index:last_index + num3]
    # last_index = last_index + num3
    # var01 += last_index
    # index = last_index
    # # Process the order here
    # print(f" {str1} {str2} {str}  ")
    # index += 4
    # # print(len(name_str))
    # # str01 = getStrFromIndex(0, 6)

