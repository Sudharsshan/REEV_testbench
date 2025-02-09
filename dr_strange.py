# Welcome to the script dear!
# This is the mother of all script... uhh no! it's father... aaah never mind
# This is Dr.Strange here.. the All-father of this Universe (Raspberry Pi 5)

# As Dr. Strange, I control the entire univerise I live in which in leyman terms follows below:
'''
- Obtain the data from the sensors across the test bench
- create a magic screen to show stuff for my subjects
- send the data to my delivey service to show my subjects about the proceedings
- go and watch my universe
- and repeat all above again
'''

# I shall begin the creation of my spell

# let me gather a few ingredients and people
from time import sleep # an ingrediet to control the timeline
import os # the main ingrediet that upholds the obstruction of execution in unsupported environments
import subprocess # small but mighty dude that communicates with OS and the python program
import pyautogui # one of the powerful magics that can replicate a keyboard inputs
import time # to manipulate the time flow within this world

import platform # a celestial within the universe who knows answers to all questions of this universe

# check if the current executed universe is not Windows (cause this script was developed on windows)
if(os.name != "nt"):
    from adafruit_ads1x15.analog_in import AnalogIn # a low level language used for communication in leyman terms
    from adafruit_ads1x15.ads1115 import ADS1115 # a translator dude who helps in converting the leymann terms into good language for Pi
    import board # a guide dude who tells locations across the universe
    import busio # a communication dude who communicates with translator
    from gpiozero import OutputDevice ### change this ASAP!

    # execute the rest only when a supported OS is used, (usually Linux for Raspberry Pi)

    # setup the ADC translator dude called ADS1115
    i2c = busio.I2C(board.SCL, board.SDA)
    ads = ADS1115(i2c)

    # call the hall effect dude who helps in finding the RPM of shaft
    hall_sensor = AnalogIn(ads, 0) # communicates via A0 channel of ADS1115 translator dude

    # shaft parameters
    SHAFT_PARAMETERS = 1.0 # shaft diameter in inches
    MAGNET_COUNT = 1 # number of magnets on the shaft

    # threshold for pulse detection so that the hall effect dude can alert when it crosses a value give
    RPM_VOLTAGE_THRESHOLD = 2.5

    # now time to initialize the locations to initiate the communication with sources / moderators
    relay1 = OutputDevice(pin= 23, active_high= True, initial_value= False) # GPIO 23
    relay2 = OutputDevice(pin= 24, active_high= True, initial_value= False) # GPIO 24
    
    def calculate_rpm(pulse_count, duration_seconds):
        '''
        Calculate RPM based on the number of pulses detected in the duration.
        :param pulse_count: Number of pulses detected.
        :param duration_seconds: Time duration in seconds.
        :return: Calculated RPM.
        '''
        return (pulse_count / MAGNET_COUNT) / duration_seconds * 60
    
def main():
     # Introductions to subjects
    print("Behold my dear Subjects!!\nI, Dr. Strange am here to control and show ya\'ll the power of this Universe")
    print("=====================================================================================")
    print("Detecting current OS...")
    sleep(0.3)

    # detect the current running OS
    if(os.name == "nt"):
        host = "Windows"
    elif (os.name == "posix" and platform.system() == "Darwin"):
        host = "Mac OS"
    elif (os.name == "posix" and platform.system() == "Linux"):
        host == "Linux"
    print(f"host Universe: ", host)
    print("=====================================================================================")
    
    if(host != "Linux"):
        # alert user about unsupported OS
        print("Unsupported Universe!!\nThis OS does not support the execution of this script.")
        print("Please run inside a Raspberry Pi runing Linux distro.")
        print("=====================================================================================")
        print("However! Dr. Strange is here to allow his subjects to look at & feel the miracle!")
        print("From here, the actual magic begins! Since an unsupported OS is detected,")
        print("I shall mock the basic requirements myself and initialise the GUI")
        print("=====================================================================================")
        sleep(0.5)

    else:
        # supported OS!
        # begin sensor detection and parameter measurement!
        print("Supported OS detected!\nNow, allow Dr. Strange to do his magic and show you what he is capable of...")
        print("=====================================================================================")
        sleep(0.5)

    # now it's time to begin the magic!
    # first things first it should obtain the current working directory
    currentWorkingDirectory = os.getcwd()
    print(f"Current working directory = ", currentWorkingDirectory)
    workingDirectory = ""
    for letter in currentWorkingDirectory:
        if letter is "\\":
            letter = "/"
        workingDirectory+= letter
    print(f"New working directory= ", workingDirectory)
    
    # After which it must launch the flutter app from the main.dart file by locating it in browser mode
    print("Calling forth the magic...")
    workingDirectory+= "/test_bench"
    os.chdir(workingDirectory)
    app_thread = subprocess.Popen(["flutter","run","-d", "chrome"], shell=True)
    
    # then it should make the browser full screen
    time.sleep(20) # wait till the chrome opens and then enter full screen within
    # additionally optimize this timing for the launch time of chrome within linux i.e. in Raspberry Pi 5
    
    print('Entering full-screen mode in chrome')
    pyautogui.press('f11')
    print('Succesful')
    
    # continuously obtain the data from sensors with a delay of 200ms between intervals and post it to the delivery dude


if __name__ == "__main__":
    main()