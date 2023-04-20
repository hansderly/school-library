module ListAllRentals
  def list_all_rental
    puts "\n"
    if @rentals_list.empty?
      puts 'The rental list is empty.'
    else
      print 'ID of the person : '
      person_id = gets.chomp.to_i
      puts "Rentals:\n"

      @rentals_list.each do |value|
        next unless value['person'] == person_id

        @books_list.each do |book|
          next unless value['book'].to_i == book['id'].to_i

          puts "Date: #{value['date']}, Book \"#{book['title']}\" by #{book['author']}"
        end
      end

    end

    puts "\n"
  end
end
