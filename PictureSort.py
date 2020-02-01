#!/usr/bin/python3
import os
import shutil
import time
import schedule

path = '/home/User/Downloads/'
moveto = '/home/User/Pictures/'

files = os.listdir('/home/User/Downloads/')

f = ['*.png','*.jpg']

starttime = time.time()

def job():
    for f in files:
        shutil.move(os.path.join(path, f), os.path.join(moveto, f))

schedule.every(1).minute.do(job)

while 1:
    schedule.run_pending()
    time.sleep(1)
