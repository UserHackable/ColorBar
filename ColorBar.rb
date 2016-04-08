#!/usr/bin/env ruby

puts "ColorBar"

vcc = 5.0

vRed = 2.0
vBlue = 3.2
vGreen = 3.4

iLed = 0.02
nLeds = 6

vTransistor = 0.7

vLEDs = [vRed,vBlue,vGreen]

puts "LED V   I     R      P"

vLEDs.each do |vLed|
  v = vcc - vLed - vTransistor
  i = iLed * nLeds
  r = v / i
  p = v * i
  puts "%3.1f %3.1f %5.3f %6.3f %5.3f"%[vLed,v,i,r,p]
end


