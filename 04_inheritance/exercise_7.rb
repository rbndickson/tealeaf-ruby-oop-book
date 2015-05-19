# 7. Create a class 'Student' with attributes name and grade. Do NOT make the
#    grade getter public, so joe.grade will raise an error.
#    Create a better_grade_than? method, that you can call like so...

#    puts "Well done!" if joe.better_grade_than?(bob)

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    self.get_grade > other_student.get_grade
  end

  protected

  def get_grade
    @grade
  end
end


joe = Student.new("Joe", 99)
bob = Student.new("Bob", 55)

#p joe.get_grade
#p bob.get_grade
puts "Well done!" if joe.better_grade_than?(bob)
#puts "Well done!" if joe.better_grade_than?(bob)
