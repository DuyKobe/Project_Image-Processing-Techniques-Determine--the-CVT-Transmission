import math
import cv2
import numpy as np
import matplotlib.pyplot as plt
from sympy import false

# def is_bad_contour(c):5
#     # approximate the contour
# 	peri = cv2.arcLength(c, False)
# 	approx = cv2.approxPolyDP(c, 0.02 * peri, False)
# 	# the contour is 'bad' if it is not a rectangle
# 	return not len(approx) == 4

image = cv2.imread('Anh_don.jpg') 
gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
blurred = cv2.GaussianBlur(gray, (5, 5), 0)

# compute a "wide", "mid-range", and "tight" threshold for the edges
# using the Canny edge detector
tight = cv2.Canny(blurred, 170, 200)
wide = cv2.Canny(blurred, 60, 100)
mid = cv2.Canny(blurred, 80, 120)


kernal = np.ones((2, 2), dtype="uint8")
mask_tight = cv2.dilate(tight, kernal)
# cv2.imshow("tight",mask_tight)

mask_mid = cv2.dilate(mid, kernal)
# cv2.imshow("mid",mask_mid)

mask_wide = cv2.dilate(wide, kernal)
# cv2.imshow("wide",mask_wide)

# contours, hierarchy = cv2.findContours(mask_tight, 
#                                     cv2.RETR_LIST, 
#                                     cv2.CHAIN_APPROX_SIMPLE)    


# epsilon = 0.1*cv2.arcLength(contours[0] ,False)
# approx = cv2.approxPolyDP(contours[0],epsilon,False)

# if len(contours) != 0:
#     for contour in contours:
#         if 300 > cv2.contourArea(contour) > 200:
#             x, y, w, h = cv2.boundingRect(contour)
#             cv2.rectangle(image, (x,y), (x + w, y + h), (0, 0, 255), thickness = 1)
#             M = cv2.moments(contour)
#             if M['m00'] != 0:
#                 cx = int(M['m10']/M['m00'])
#                 cy = int(M['m01']/M['m00'])
#                 centroid1 = [cx, cy]
#                 print(centroid1)
#                 cv2.circle(image, (cx, cy), 1, (0, 0, 255), -1)
#                 cv2.putText(image, "center", (cx - 20, cy - 20),
#                             cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), thickness = 1)


# cv2.imshow("puly-detect", image)
# show the output Canny edge maps

lines = cv2.HoughLinesP(tight,1,np.pi/180,100,minLineLength=10,maxLineGap=2)
for line in lines:
    x1,y1,x2,y2 = line[0]
    cv2.line(image,(x1,y1),(x2,y2),(0,255,0),5)
cv2.imshow('houghlines5.jpg',image)

if cv2.waitKey(0) & 0xFF == ord('q'):
    cv2.destroyAllWindows()