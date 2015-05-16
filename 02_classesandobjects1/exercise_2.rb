# 2. Add an accessor method to your MyCar class to change and view the color
#    of your car. Then add an accessor method that allows you to view, but not
#    modify, the year of your car.

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
end

peugeot = MyCar.new(1989, "red", "206")

puts peugeot.color
puts peugeot.year
peugeot.color = "blue"
puts peugeot.color
