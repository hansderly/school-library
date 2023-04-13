require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name = 'unknown', parent_permission: false)
    super(age, name, parent_permission: parent_permission)

    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.push(self) unless @students.include?(self)
  end

  def play_hooky
    '"¯\(ツ)/¯"'
  end
end
