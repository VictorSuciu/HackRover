from __future__ import division
import RPi.GPIO as GPIO
import time
import sys
from pygame.locals import *
import math
import struct
#from controller_input.py import getInputs
#from unicurses import *

rf = 18  #pin12
rb = 23  #pin16

lf = 4  #pin 7
lb = 17  #pin 11

frf = 24  #18
frb = 25  #22

flf = 27  #13
flb = 22  #15

brf = 20  #rightForward
brb = 21  #rightBackwards

blf = 19  #rightForward
blb = 26  #rightBackwards

GPIO.setmode(GPIO.BCM)

GPIO.setup(rf,GPIO.OUT)
GPIO.setup(rb,GPIO.OUT)
GPIO.setup(lf,GPIO.OUT)
GPIO.setup(lb,GPIO.OUT)

GPIO.output(rf,GPIO.LOW)
GPIO.output(rb,GPIO.LOW)
GPIO.output(lf,GPIO.LOW)
GPIO.output(lb,GPIO.LOW)

rightForward = GPIO.PWM(rf, 1000)
rightBackward = GPIO.PWM(rb, 1000)
leftForward = GPIO.PWM(lf, 1000)
leftBackward = GPIO.PWM(lb, 1000)


GPIO.setup(frf,GPIO.OUT)
GPIO.setup(frb,GPIO.OUT)
GPIO.setup(flf,GPIO.OUT)
GPIO.setup(flb,GPIO.OUT)
GPIO.setup(brf,GPIO.OUT)
GPIO.setup(brb,GPIO.OUT)
GPIO.setup(blf,GPIO.OUT)
GPIO.setup(blb,GPIO.OUT)

GPIO.output(frf,GPIO.LOW)
GPIO.output(frb,GPIO.LOW)
GPIO.output(flf,GPIO.LOW)
GPIO.output(flb,GPIO.LOW)
GPIO.output(brf,GPIO.LOW)
GPIO.output(brb,GPIO.LOW)
GPIO.output(blf,GPIO.LOW)
GPIO.output(blb,GPIO.LOW)

frontRF = GPIO.PWM(frf, 1000)
frontRB = GPIO.PWM(frb, 1000)
frontLF = GPIO.PWM(flf, 1000)
frontLB = GPIO.PWM(flb, 1000)
backRF = GPIO.PWM(brf, 1000)
backRB = GPIO.PWM(brb, 1000)
backLF = GPIO.PWM(blf, 1000)
backLB = GPIO.PWM(blb, 1000)

#noseRightForward.stop()
#noseRightBackward.stop()
#noseLeftForward.stop()
#noseLeftBackward.stop()
duty = 100
dutydut = 100;
noseDuty = 100;

leftDuty = 0
rightDuty = 0

 
def update_main_treads(left_speed, right_speed):
    if abs(left_speed) < 40:
        leftForward.stop()
        leftBackward.stop()
    elif left_speed > 0:
        leftBackward.stop()
        leftForward.start(left_speed)
    else:
        leftForward.stop()
        leftBackward.start(-left_speed)
        
    if abs(right_speed) < 40:
        rightForward.stop()
        rightBackward.stop()
    elif right_speed > 0:
        rightBackward.stop()
        rightForward.start(right_speed)
    else:
        leftForward.stop()
        leftBackward.start(-right_speed)
        
        
        
def update_rover_state(input_list):
    
    update_main_treads((input_list[12] / 32767) * 100, (-input_list[15] / 32767) * 100)


