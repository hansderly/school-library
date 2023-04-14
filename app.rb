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
end
