#!/home/USERNAME/miniconda3/envs/YAVUZ/bin/python

import cv2

if __name__ == "__main__":
    PATH = "./road.mp4"
    cap = cv2.VideoCapture(PATH)
    
    if not cap.isOpened():
        print(f"Unable to open Video File")
        exit(0)
    
    while True:
        ret, frame = cap.read()
        
        if not ret:
            break
        
        cv2.imshow("Road Video", frame)
        
        if cv2.waitKey(1) & 0xFF == ord("q"):
            break
        
    cap.release()
    cv2.destroyAllWindows()
    
    