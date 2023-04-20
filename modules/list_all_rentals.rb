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

        @books_list.each_with_index do |book, i|
          next unless value['book'].to_i == book['id'].to_i

          puts book
        end
      end

    end

    puts "\n"
  end
end
