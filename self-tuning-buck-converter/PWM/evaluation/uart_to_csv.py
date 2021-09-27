import serial

dev = "/dev/ttyUSB0"
ser = serial.Serial(dev, 115200, timeout=1)

f = open("pwm_duty.csv", "w")

while(1):
    data = str(ser.readline(), 'ascii')
    
    if data == "":
        print("end of data")
        break

    f.write(data)

ser.close()
f.close()