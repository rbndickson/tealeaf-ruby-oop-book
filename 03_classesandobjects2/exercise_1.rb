# 3. Add a class method to your MyCar class that calculates the
#    gas mileage of any car.


class MyCar

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

peugeot = MyCar.new(1989, "red", "206")
puts MyCar.calculate_gas(100, 5)
