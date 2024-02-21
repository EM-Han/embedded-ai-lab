#!/home/USERNAME/miniconda3/envs/YAVUZ/bin/python

import cv2

if __name__ == "__main__":
    PATH = "./macaw.jpg"
    img = cv2.imread(PATH, cv2.IMREAD_COLOR)
    
    assert img is not None, "Image file couldn't be found"

    cv2.imshow("Macaw Image", img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()