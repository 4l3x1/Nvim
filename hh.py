from gpiozero import Servo
from time import sleep
servo = Servo(17)

while True:
    servo.mid()
    print("Mid")
    sleep(0.5)
    servo.min()
    print("Min")
    sleep(1)
    servo.mid()
    print("Mid")
    sleep(0.5)
    servo.max()
    print("Max")
    sleep(1)