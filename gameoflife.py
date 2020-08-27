import numpy as np
from cv2 import cv2
import random

width = 200
height = 200
probabilityOfLife = 0.1
numOfAliveCells = int(width*height*probabilityOfLife)
listOfAliveCells = [(random.randrange(0,width),random.randrange(0,height)) for i in range(numOfAliveCells)]
#img = np.random.choice([0,1], size=(width,height), p=[1-probabilityOfLife,probabilityOfLife]) * 255

img = np.zeros((width,height),dtype=np.uint8)
for coord in listOfAliveCells:
    img[coord[0],coord[1]]=255

imgToShow = cv2.resize(img,(width*4,height*4))
#img = np.random.random((width,height))
print(cv2.countNonZero(img))
cv2.imshow("name",imgToShow)
cv2.waitKey(0)
