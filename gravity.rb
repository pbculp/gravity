include Math

def get_height
  print "Enter the height of the object: "
  gets.chomp.to_f
end

def get_units
  print "Enter the unit of measure (m, cm, yd, ft): "
  units = gets.chomp.downcase
  return units if units == "m" || units == "cm" || units == "yd" || units == "ft"
  puts "You did not enter a valid unit of measure."
  get_units  
end

def convert_to_meters(height, units)
  case units
  when "ft"
    height * 0.3048
  when "yd"
    height * 0.9144
  when "cm"
    height * 0.01
  when "m"
    height
  end
end

def calculate_time(height)
  time = sqrt((2 * height) / 9.8)
end

puts
height = get_height
units  = get_units
puts
puts "The object will hit the ground in #{calculate_time(convert_to_meters(height, units))} seconds."

