# 5. Move all of the methods from the MyCar class that also pertain to the
#    MyTruck class into the Vehicle class. Make sure that all of your previous
#    method calls are working when you are finished.


module Fog_horn
  def fog_horn
    puts 'waaaaaaaaaaaa'
  end
end

class Vehicle

  attr_accessor :color
  attr_reader :year

  @@number_of_vehicles = 0

  def initialize(y, c, m)

    @@number_of_vehicles += 1

    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def self.calculate_gas(miles, gas_gallons)
    mpg = miles / gas_gallons
    puts "MPG: #{mpg}"
  end

  def get_current_speed
    @current_speed
  end

  def speed_up(amount)
    puts "Previous speed is #{@current_speed}"
    @current_speed += amount
    puts "New speed is #{@current_speed}"
  end

  def brake(amount)
    puts "Previous speed is #{@current_speed}"
    @current_speed -= amount
    puts "New speed is #{@current_speed}"
  end

  def shut_off
    puts "Previous speed is #{@current_speed}"
    @current_speed = 0
    puts "New speed is #{@current_speed}"
  end

  def spray_paint(new_color)
    puts "Previous color was #{@color}"
    @color = new_color   # or better, use the setter method self.color
    puts "Resprayed #{@color}"
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

puts "Total number of vehicles: #{Vehicle.total_number_of_vehicles}"
peugeot = MyCar.new(1989, "red", "206")
puts "Total number of vehicles: #{Vehicle.total_number_of_vehicles}"
puts "Current speed is #{peugeot.get_current_speed}"
peugeot.speed_up(40)
peugeot.get_wheels
peugeot.spray_paint("blue")

lana = MyTruck.new(2010, 'black', 'big one')
puts "Total number of vehicles: #{Vehicle.total_number_of_vehicles}"
lana.speed_up(22)
lana.get_transmission

Vehicle.calculate_gas(250, 5)
