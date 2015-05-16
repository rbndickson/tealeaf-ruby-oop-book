# 3. You want to create a nice interface that allows you to accurately describe
#    the action you want your program to perform.
#    Create a method called spray_paint that can be called on an object
#    and will modify the color of the car.

class MyCar

  attr_accessor :color
  attr_reader :year


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

  def spray_paint(new_color)
    @color = new_color   # or better, use the setter method self.color
  end
end

peugeot = MyCar.new(1989, "red", "206")

puts peugeot.color
puts peugeot.year
peugeot.spray_paint("blue")
puts peugeot.color
