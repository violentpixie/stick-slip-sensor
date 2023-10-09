import pyaudio
import numpy as np
import rospy
import time
import csv
# import sys
# sys.path.append('../sensor')
from sensor.msg import Accel

# accel_data = Accel()
# publisher
accel_data = Accel()

def talker():
    
    FORMAT = pyaudio.paInt16
    CHANNELS = 2
    RATE = 8000
    CHUNK = 1
    audio = pyaudio.PyAudio()
        
    stream = audio.open(format=FORMAT, channels=CHANNELS,
            rate=RATE, input=True,
            frames_per_buffer=CHUNK,input_device_index=6)
    
    sample = np.zeros([CHANNELS, CHUNK])
    
    print("recording...")
    # data = stream.read(CHUNK)
    counter = 0
    file = open('test_acc.csv', 'w')
    writer = csv.writer(file)
    while not rospy.is_shutdown():
    # while counter<1000:
        data = stream.read(CHUNK)
        print(len(data))
        for each in data:
            print(each)
        writer.writerow(data)
        
        # read data from stream
        # for i in range (CHUNK):
        #     for j in range(CHANNELS):
        #         sample[j,i]=int.from_bytes([data[j*2+i*4],data[j*2+i*4+1]], "little", signed=True)

        # print(int.from_bytes([data[2], data[3]], "little", signed=True))
        # for j in range(CHANNELS):
        #     s1 = int.from_bytes([data[j*2+i*4],data[j*2+i*4+1]], "little", signed=True)
        #     # sample[j,i]=int.from_bytes([data[j*2+i*4],data[j*2+i*4+1]], "little", signed=True)     
                
        sample = sample/32768    
        i = 0
        accel_data.accel1_x = sample[0,:].transpose()
        accel_data.accel1_y = sample[1,:].transpose()
        # accel_data.accel2_x = sample[2,:].transpose()
        # accel_data.accel2_y = sample[3,:].transpose()
        #accel_data.accel3_x = sample[4,:].transpose()
        #accel_data.accel3_y = sample[5,:].transpose()
        # print(accel_data.accel1_x[0])
        # pub.publish(accel_data)
        
        sample = np.zeros([CHANNELS, CHUNK])
        # accel_data.data[:] = []
        # rate.sleep()
        counter = counter+1
    # stop Recording
    # stream.stop_stream()
    file.close()
    stream.close()
    # audio.terminate()

if __name__ == '__main__':
    
    rospy.init_node('talker', anonymous=True)
    # pub = rospy.Publisher('accel_data', Accel, queue_size = 100)
    # rate = rospy.Rate(8000) #10hz

    try:
        talker()
    except rospy.ROSInterruptException:
        pass
    rospy.spin()
