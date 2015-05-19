# 4. Print to the screen your method lookup for the classes that you
#    have created.

module Fog_horn
  def fog_horn
    puts 'waaaaaaaaaaaa'
  end
end

class Vehicle
  @@number_of_vehicles = 0

  def initialize
    @@number_of_vehicles += 1
  end

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def self.calculate_gas(miles, gas_gallons)
    mpg = miles / gas_gallons
    puts "MPG: #{mpg}"
  end
end

class MyCar < Vehicle
  NO_WHEELS = 4
  def get_wheels
    puts "Number of wheels: #{NO_WHEELS}"
  end
end

class MyTruck < Vehicle
  TRANSMISSION = 'manual'
  include Fog_horn

  def get_transmission
    puts "#{TRANSMISSION} transmission"
  end

end

puts "--- Vehicle class ---"
puts Vehicle.ancestors

puts "--- MyCar class ---"
puts MyCar.ancestors

puts "--- MyTruck class ---"
puts MyTruck.ancestors
