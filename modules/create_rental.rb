require 'date'

module CreateRental
  def create_rental
    puts "\n"
    if @books_list.empty? || @people_list.empty?
      puts 'Please make sure you have books and persons'
    else
      puts 'Select a book from the following list by number'
      list_all_books
      book_position = gets.chomp.to_i
      chosen_book = @books_list[book_position]['id'].to_i
      puts 'Select a person from the following list by number (not id)'
      list_all_people
      person_position = gets.chomp.to_i
      chosen_person = @people_list[person_position]['id'].to_i
      current_time = DateTime.now
      cdt = current_time.strftime '%d/%m/%Y %H:%M'
      print "Date  #{cdt}: "
      date = gets.chomp

      

      new_rent = Rental.new(date, chosen_book, chosen_person)
      # @rentals_list << new_rent
      @rentals_list << {"date" => new_rent.date, "book" => new_rent.book, "person" => new_rent.person}
      puts 'Rental created successfully'
    end
    puts "\n"
  end
end
