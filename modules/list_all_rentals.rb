module ListAllRentals
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
end
