module ListAllRentals
  def list_all_rental
    puts "\n"
    if @rentals_list.empty?
      puts 'The rental list is empty.'
    else
      print 'ID of the person : '
      person_id = gets.chomp.to_i
      puts "Rentals:\n"

      @rentals_list.each_with_index do |value, _i|
        p value
        if value['person'] == person_id
          p 'perosn'
          p @books_list
        end
      end

    end

    puts "\n"
  end
end
