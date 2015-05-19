# 1. Create a superclass called Vehicle for your MyCar class to inherit from
#    and move the behavior that isn't specific to the MyCar class to the
#    superclass. Create a constant in your MyCar class that stores information
#    about the vehicle that makes it different from other types of Vehicles.

#    Then create a new class called MyTruck that inherits from your superclass
#    that also has a constant defined that separates it from the MyCar class
#    in some way.

class Vehicle

    attr_accessor :color
    attr_reader :year

  def initialize(y, c, m)

    @year = y
    @color = c
    @model = m
    @current_speed = 0
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
    @color = new_color   # or better, use the setter method self.color
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

  def get_transmission
    puts "#{TRANSMISSION} transmission"
  end
end

peugeot = MyCar.new(1989, "red", "206")
peugeot.speed_up(40)
peugeot.get_wheels

lana = MyTruck.new(2010, 'black', 'big one')
lana .speed_up(22)
lana.get_transmission
