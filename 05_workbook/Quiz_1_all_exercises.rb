puts "----- Q1 -----"
# 1. Which of the following are objects in Ruby? If they are objects,
#    how can you find out what class they belong to?

puts true.class
puts "hello".class
puts [1, 2, 3, "happy days"].class
puts 142.class

#    They are all objects. You can use .class

puts "----- Q2 -----"
# 2. If we have a Car class and a Truck class and we want to be able to go_fast,
#    how can we add the ability for them to go_fast using the module Speed.
#    How can you check if your Car or Truck can now go fast?

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

ford = Car.new
daz = Truck.new

ford.go_fast
daz.go_fast

puts "----- Q3 -----"
# 3. In the last question we had a module called Speed which contained a
#    go_fast method. We included this module in the Car class as shown below.

# module Speed
#   def go_fast
#     puts "I am a #{self.class} and going super fast!"
#   end
# end
#
# class Car
#   include Speed
#   def go_slow
#     puts "I am safe and driving slow."
#   end
# end

#    When we called the go_fast method from an instance of the Car class
#    (as shown below) you might have noticed that the string printed when we
#    go fast includes the name of the type of vehicle we are using.
#    How is this done?

puts "self.class"

puts "----- Q4 -----"
# 4. If we have a class AngryCat how do we create a new instance of this class?
#    The AngryCat class might look something like this:

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

new_instance = AngryCat.new

puts "----- Q5 -----"
# 5. Which of these two classes has an instance variable and how do you know?

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

puts "Pizza because of the '@' symbol used in the instance variable '@name'."

puts "----- Q6 -----"
# 6. What could we add to the class below to access the
#    instance variable @volume?

class Cube
 attr_accessor :volume
 def initialize(volume)
   @volume = volume
 end
end

big_cube = Cube.new(1000)
puts big_cube.volume

# or a seperate getter method

puts "----- Q7 -----"

# 7. What is the default thing that Ruby will print to the screen if you call
#    to_s on an object? Where could you go to find out if you want to be sure?

puts "It will print the objects class an encoding of the object id." \
" It is detailed in the docs"

puts "----- Q8 -----"
# 8. If we have a class such as the one below:

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

#    You can see in the make_one_year_older method we have used self.
#    What does self refer to here?

puts "Here, self refers to the the object that is calling the method."

puts "----- Q9 -----"
# 9. If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

#    In the name of the cats_count method we have used self.
#    What does self refer to in this context?

puts "Here, self refers to the class Cat"

puts "----- Q10 -----"

# If we have the class below, what would you need to call to create a new
# instance of this class.

class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

Bag.new("blue", "canvas")
