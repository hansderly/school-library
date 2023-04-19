module CreatePerson
  def create_person
    puts "\n"
    print 'Do you want to create a Student (1) or a Teacher (2) [Input the number]: '
    choice = gets.chomp
    if choice == '1'
      create_student
    else
      create_teacher
    end
  end

  def create_teacher
    puts "\n"
    puts 'Please provide these information :'
    print 'Age : '
    age = gets.chomp
    print 'Name : '
    name = gets.chomp
    print 'Specialization : '
    specialization = gets.chomp

    new_teacher = Teacher.new(age, specialization, name)
    p new_teacher
    @people_list << {"type" => "Teacher", "id" => new_teacher.id, "name" => new_teacher.name, "age" => new_teacher.age, "specialization" => new_teacher.specialization}
    puts 'Teacher created successfully'
    puts "\n"
  end

  def create_student
    puts "\n"
    puts 'Please provide these information :'
    print 'Classroom (number) : '
    classroom = gets.chomp
    print 'Age : '
    age = gets.chomp
    print 'Name : '
    name = gets.chomp
    print 'Has parent permission? [Y/N] : '
    parent_permission = gets.chomp
    permission = false
    parent_permission.upcase == 'N' ? permission = false : permission = true
    new_student = Student.new(age, classroom, name, parent_permission: permission)
    # @people_list << new_student
    p new_student
    @people_list << {"type" => "Student", "id" => new_student.id, "name" => new_student.name, "age" => new_student.age, "classroom" => new_student.classroom, "permission" => permission}
    puts 'Student created successfully'
    puts "\n"
  end
end
