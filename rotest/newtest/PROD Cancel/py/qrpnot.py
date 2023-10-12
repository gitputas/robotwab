import cv2
import numpy as np
import pyzbar.pyzbar as pyzbar

def decode(image):
    # Find QR codes in the image
    decodedObjects = pyzbar.decode(image)
    return decodedObjects

image = cv2.imread('../testqr.png')
decodedObjects = decode(image)
dataqr = decodedObjects[0].data
name_byte = dataqr
name_str = name_byte.decode()
print(name_str)
data = name_str
index = 0
dataTag = ""

while index < len(data):
    # print(f"index: {index}")
    keyTag = data[index:index + 2]
    index += 2
    sizestr = data[index:index + 2]
    size = int(sizestr)
    index += 2
    dataTag = data[index:index + size]
    index += size
    # print(f"index Final: {index}")
    print(f"{keyTag} {sizestr} {dataTag}")
# 
    if keyTag == "30":
        print("\n======= Start Tag 30 Data =======\n")
        dataTag30 = dataTag
        index2 = 0
        while index2 < len(dataTag30):
            keyTag2 = dataTag30[index2:index2 + 2]
            index2 += 2
            sizestr2 = dataTag30[index2:index2 + 2]
            size2 = int(sizestr2)
            index2 += 2
            dataTag2 = dataTag30[index2:index2 + size2]
            index2 += size2
            # print(f"index2 Final: {index2}")
            print(f"{keyTag2} {sizestr2} {dataTag2}")
        print("\n======= End Tag 30 Data =======\n")