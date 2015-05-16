# 1. Create a class called MyCar. When you initialize a new instance or
#    object of the class, allow the user to define some instance variables
#    that tell us the year, color, and model of the car. Create an instance
#    variable that is set to 0 during instantiation of the object to track the
#    current speed of the car as well. Create instance methods that allow the
#    car to speed up, brake, and shut the car off.

#    Note: Not using att_accessor

class MyCar

  def initialize(y, c, m)

    @year = y
    @color = c
    @model = m
    @current_speed = 0
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
end

peugeot = MyCar.new(1989, "red", "206")
puts peugeot.get_current_speed
peugeot.speed_up(20)
peugeot.brake(5)
peugeot.shut_off
