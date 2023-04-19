module ListAllRentals
  def list_all_rental
    puts "\n"
    if @rentals_list.empty?
      puts 'The rental list is empty.'
    else
      print 'ID of the person : '
      person_id = gets.chomp.to_i
      puts "Rentals:\n"

      @rentals_list.each_with_index do |value, i|
        @books_list.each do |b|
          p b['id']
          if b['id'] == value['book']
            p b
          end
          # if value['person'] == person_id
            # p value['book']
            # p @books_list.find(id)
            # puts "Date: #{value['date']}, Book \"#{value['book']}\" by #{value.book.author}" if value.person.id == person_id
          # end
        end
      end

    end

    puts "\n"
  end
end
