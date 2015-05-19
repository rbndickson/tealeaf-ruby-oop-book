puts "----- Q1 -----"
# 1. You are given the following code:

# class Oracle
#   def predict_the_future
#     "You will " + choices.sample
#   end
#
#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end
#
# #What is the result of calling?
#
# oracle = Oracle.new
# oracle.predict_the_future

# The program will return one of the 3 choices at random.

puts "----- Q2 -----"
# 2. What is the result of the following:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
puts trip.predict_the_future

puts "It will choose one of the 3 choices in the RoadTrip class. This " \
"overrides the former choices."

puts "----- Q3 -----"
# 3. How do you find where Ruby will look for a method when that method
#    is called? How can you find an object's ancestors?
#    What is the lookup chain for Orange and HotSauce?


module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end
puts "-- Orange --"
p Orange.ancestors
puts "-- HotSauce --"
p HotSauce.ancestors


puts "----- Q4 -----"
# 4. What could you add to this class to simplify it and remove two methods
#    from the class definition while still maintaining the same functionality?

class BeesWax
  attr_accessor :type
  def initialize(type)
    @type = type
  end
  def describe_type
    puts "I am a #{type} of Bees Wax"
  end
end

bw = BeesWax.new("sweet")
bw.describe_type
bw.type = "sour"
bw.describe_type

puts "----- Q5 -----"
# 5. There a number of variables listed below. What are the different types and how do you know which is which?

#    excited_dog = "excited dog"  # local variable
#    @excited_dog = "excited dog"  # instance / object variable
#    @@excited_dog = "excited dog" # class variable

#    You can tell from the amount of @ symbols

puts "----- Q6 -----"
# 6. If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end
#    Which one of these is a class method (if any) and how do you know?
#    How would you call a class method?

#    self.manufacturer is the class method because it has self.method_name
#    you call it by ClassName.method_name

puts "----- Q7 -----"
# 7. If we have a class such as the one below:

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

#    Explain what the @@cats_count variable does and how it works.
#    What code would you need to write to test your theory?

#    The @@cats_count variable keeps track of how many instances of cats_count
#    have been created.


#    Test below

puts Cat.cats_count
cat_1 = Cat.new('moggy')
puts Cat.cats_count
cat_2 = Cat.new('tabby')
puts Cat.cats_count

puts "----- Q8 -----"
# 8. If we have this class:

class Game
  def play
    "Start the game!"
  end
end

#    And another class:

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

#    What can we add to the Bingo class to allow it to inherit the play method
#    from the Game class?



puts "----- Q9 -----"
# 9. If we have this class:

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

#    What would happen if we added a play method to the Bingo class, keeping in
#    mind that there is already a method of this name in the Game class that
#    the Bingo class inherits from.

#    The play method in the Bingo class would be used first in the event of
#    Bingo.play being called

puts "----- Q10 -----"
# 10. What are the benefits of using Object Oriented Programming in Ruby?
#     Think of as many as you can.

#     1. You can re-use code
#     2. You can change code in one place
#     3. You can use pre-written code
#     4. You can manage complicated programs in a well structured way
#     5. Naming objects is useful to make the code easier to read
