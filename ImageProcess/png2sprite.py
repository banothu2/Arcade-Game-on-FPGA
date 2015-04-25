from __future__ import print_function
import Image
import sys
import os

OLD_PATH = "PNG/Contra/contra_snow_1.png"
NEW_PATH = "Stable/contra_snow_1.txt"

im = Image.open(OLD_PATH)
pixels = im.load()
colors = im.getcolors()
data = list(im.getdata())
height = im.size()[1]
width = im.size()[0]
print("colors: ")
print(colors)
print("data:")
print(data)