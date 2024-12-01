# This script will obtain the data from the main.py and calculates the following stuff
'''
1. Current (charging & discharging)
2. Voltage (charging & discharging)
3. Charging / Discharging (TRUE || FALSE)
4. RPM
5. battery SOC
'''

# Then it packs the data into a map/xml and forwards it through a web-socket port to 
# flutter engine to display on the screen

import wizard_delivery_service as Oz

# lets begin with obtaining the necessary data and storing them into global variables

# global datas
voltage = 48 # default
current = 0 #defaults
status = False #defaults
rpm = 0 #defaults
btry_soc = 0 #defaults
isItDone = False

parcel = {
    "charging_voltage" : 0.0,
    "charging_current" : 0.0,
    "discharging_voltage" : 0.0,
    "discharging_current" : 0.0,
    "rpm" : 0,
    "status" : False,
    "soc" : 100,
}

def gimmeData(Voltage, Current, Rpm, Status):
    # voltage = voltage of battery
    # current = current going to/from the battery
    # rpm = RPM of the engine
    # status = charging / discharging
    voltage = Voltage
    current = Current
    status = Status
    rpm = Rpm

    # show user about the obtained data
    print("Data obtained:")
    print(f"Voltage: ",voltage,"\nCurrent: ", current,"\nStatus: (1 - charging || 0 - discharging): ", status,"\nRPM: ", rpm)

# calculate the SoC of battery
def soc(Voltage, Current):
    # use farman filter method to calculate the soc
    btry_soc = Voltage * Current

    # show user about the calculated data
    print(f"SoC (calculated): ", soc)

# pack the data into a parcel so that flutter engine can feed on it and get nutritious
def porter(VOLTAGE, CURRENT, STATUS, RPM, SOC):
    #determine if charging or discharging and fill in the values appropriately
    if(STATUS):
        # set values for charging parameters
        parcel["charging_current"] = CURRENT
        parcel["charging_voltage"] = VOLTAGE

        #default the contorary parameters
        parcel["discharging_current"] = 0.0
        parcel["discharging_voltage"] = 0.0
    else:
        # set values for discharging parameters
        parcel["discharging_current"] = CURRENT
        parcel["discharging_voltage"] = VOLTAGE

        # default the contorary paramters
        parcel["charging_current"] = 0.0
        parcel["charging_voltage"] = 0.0
    
    parcel["rpm"] = RPM
    parcel["status"] = STATUS
    parcel["soc"] = SOC

    # show user about the final data packed
    print(f"Packed data:\n", parcel)

    # send the parcel to wizard to deliver to flutter engine
    isItDone = True if (Oz.deliverThis(parcel)) else False# should return a bool to indicate if successful or not

    # show user about the result of delivery
    result = "sorry, no :(" if isItDone else "yay, it did!"
    print(f"parcel delivered?: ",result)
