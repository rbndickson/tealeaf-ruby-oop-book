# A module is for code that you want to include in more than one class.

module Languages
  def say_hello_jp
    puts "nya"
  end
end



class Cats

  include Languages

  def say_hello
    puts "meow"
  end
end

kitty = Cats.new

kitty.say_hello
kitty.say_hello_jp
