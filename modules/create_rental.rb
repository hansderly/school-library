module CreateRental
  def create_rental
    puts "\n"
    if @books_list.empty? || @people_list.empty?
      puts 'Please make sure you have books and persons'
    else
      puts 'Select a book from the following list by number'
      list_all_books
      book_position = gets.chomp.to_i
      puts 'Select a person from the following list by number (not id)'
      list_all_people
      person_position = gets.chomp.to_i
      print 'Date (2023/04/13): '
      date = gets.chomp
      new_rent = Rental.new(date, @books_list[book_position], @people_list[person_position])
      @rentals_list << new_rent
      puts 'Rental created successfully'
    end
    puts "\n"
  end
end
