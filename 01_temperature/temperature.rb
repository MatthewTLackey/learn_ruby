def ftoc(faren_temp)
  cels_temp = (faren_temp * 5.0)/9.0 - (5.0/9.0) * 32
  return cels_temp
end

def ctof(cels_temp)
  faren_temp = (cels_temp * 9.0)/5.0 + 32

end

# puts ftoc(32)
# puts ftoc(98.6)
# puts ftoc(212)

# puts ctof(0)
# puts ctof(20)
# puts ctof(100)