require_relative './teacher'
require_relative './student'
require_relative './book'
require_relative './rental'

class App
  def initialize
    @book_list = []
    @people_list = []
    @rentals_list = []
  end

  def list_all_books
    puts "\n"
    if @books_list.empty?
      puts 'The library is empty.'
    else
      @books_list.each_with_index do |value, index|
        puts "#{index})  Title: #{value.title}, Author: #{value.author}"
      end
    end
    puts "\n"
  end

  def list_all_people
    puts "\n"
    if @people_list.empty?
      puts 'The list is empty.'
    else
      @people_list.each_with_index do |value, index|
        puts "#{index})  [#{value.class}] Name: #{value.name}, ID: #{value.id}, Age: #{value.age}"
      end
    end
    puts "\n"
  end

  def list_all_rental
    puts "\n"
    if @rentals_list.empty?
      puts 'The rental list is empty.'
    else
      print 'ID of the person : '
      person_id = gets.chomp.to_i
      puts "Rentals:\n"
      @rentals_list.each_with_index do |value, _index|
        puts "Date: #{value.date}, Book \"#{value.book.title}\" by #{value.book.author}" if value.person.id == person_id
      end
    end
    puts "\n"
  end

  def create_teacher
    puts "\n"
    puts 'Please provide these information :'
    print 'Age : '
    age = gets.chomp
    print 'Name : '
    name = gets.chomp
    print 'specialization : '
    specialization = gets.chomp

    new_teacher = Teacher.new(age, specialization, name)
    @people_list << new_teacher
    puts 'Teacher created successfully'
    puts "\n"
  end
end
