require_relative './Person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission)

    @classroom = classroom
  end

  def play_hooky
    '"¯\(ツ)/¯"'
  end
end

s1 = Student.new('2', 18, 'h', true)
puts s1.play_hooky
