"""CircuitPython Essentials Storage logging boot.py file"""
import board
import digitalio
import storage
import usb_cdc

# If the switch pin is connected to ground CircuitPython can write to the drive
storage.remount("/", readonly=False)
usb_cdc.enable(console=True, data=True)