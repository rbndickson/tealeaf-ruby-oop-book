puts "----- Q1 -----"
# 1. If we have this code:

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

#    What happens in each of the following cases:

puts "case 1: It will print 'Hello':"
hello = Hello.new
hello.hi

puts "case 2: It will throw an error there is no bye method"
#hello = Hello.new
#hello.bye

puts "case 3: It will print 'Hello': incorrect - error, an argument was needed."
#hello = Hello.new
#hello.greet

puts "case 4: It will print 'Goodbye':"
hello = Hello.new
hello.greet("Goodbye")

puts "case 5: It will throw an errow - hi is not a class method (self.hi)"
#Hello.hi

puts "----- Q2 -----"
# 2. If we call Hello.hi we get an error message. How would you fix this?

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def self.hi
    say_hi = Greeting.new
    say_hi.greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.hi

puts "----- Q3 -----"

# 3. When objects are created they are a separate realization of a
#    particular class.

#    Given the class below, how do we create two different instances of this
#    class, both with separate names and ages?

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

angry_cat_the_first = AngryCat.new(11, 'Brian')
angry_cat_the_second = AngryCat.new(6, 'Irene')

puts angry_cat_the_first.name
puts angry_cat_the_first.age
puts angry_cat_the_second.name
puts angry_cat_the_second.age

puts "----- Q4 -----"
# 4. How could we go about changing the to_s output on this method to look like
#    this: I am a tabby cat? (this is assuming that "tabby" is the type we
#    passed in during initialization).

class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    puts "I am a #{@type} cat."
  end
end

cat = Cat.new('tabby')
cat.to_s

puts "----- Q5 -----"
# 5. Given:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

#    What would happen if I called the methods like shown below?

tv = Television.new  # creates instance
#tv.manufacturer  # error
tv.model  # run function

Television.manufacturer # run function
#Television.model # error


puts "----- Q6 -----"
# 6. If we have a class such as the one below:

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    @age += 1
  end
end

#    In the make_one_year_older method we have used self. What is another way
#    we could write this method so we don't have to use the self prefix.

#    We can change to the @ symbol as we have used attr_accessor.

puts "----- Q7 -----"
# 7. What is used in this class but doesn't add any value?
#    The arguments as they are not used in the information.
#    Answer was the return but I think my answer is also valid..

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high "\
    "and a colour of green"
  end

end

inst = Light.new(12, 'green')
