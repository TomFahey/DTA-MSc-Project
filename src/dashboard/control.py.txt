import RPi.GPIO as GPIO
import asyncio
import time
import sys
import subprocess
from functools import partial

btn1=17
btn2=22
btn3=23
btn4=27

def callback_handler(button):
    if button==btn1:
        args = ["xdotool", "key", "F5"]
        env = {'DISPLAY': ":0"}
        subprocess.Popen(args, env=env)
    if button==btn3:
        args = ["xdotool", "key", "Up"]
        env = {'DISPLAY': ":0"}
        subprocess.Popen(args, env=env)
    if button==btn4:
        args = ["xdotool", "key", "Down"]
        env = {'DISPLAY': ":0"}
        subprocess.Popen(args, env=env)

def btn_callback(button):
    if loop is None:
        print("Error")
        return
    #loop.call_soon_threadsafe(lambda x=button: callback_handler(x))
    loop.call_soon_threadsafe(partial(callback_handler, button))



if __name__ == '__main__':
    try:
        GPIO.setmode(GPIO.BCM)
        GPIO.setup(btn1, GPIO.IN,pull_up_down=GPIO.PUD_UP)
        GPIO.setup(btn2, GPIO.IN,pull_up_down=GPIO.PUD_UP)
        GPIO.setup(btn3, GPIO.IN,pull_up_down=GPIO.PUD_UP)
        GPIO.setup(btn4, GPIO.IN,pull_up_down=GPIO.PUD_UP)

        GPIO.add_event_detect(btn1, GPIO.RISING, callback=btn_callback, bouncetime=200) 
        GPIO.add_event_detect(btn2, GPIO.RISING, callback=btn_callback, bouncetime=200) 
        GPIO.add_event_detect(btn3, GPIO.RISING, callback=btn_callback, bouncetime=200) 
        GPIO.add_event_detect(btn4, GPIO.RISING, callback=btn_callback, bouncetime=200) 
        loop = asyncio.get_event_loop()
        loop.run_forever()
    except:
        print("Error:", sys.exc_info()[0])
    finally:
        GPIO.cleanup()
        loop.close()