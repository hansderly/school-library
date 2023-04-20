require 'json'

module HandleExit
  def handle_exit
    handle_books
    handle_people
    handle_rentals
  end

  def handle_books
    return if @books_list.empty?

    data = JSON.pretty_generate(@books_list)
    File.write('./data/books.json', data)
  end

  def handle_people
    return if @people_list.empty?

    data = JSON.pretty_generate(@people_list)
    File.write('./data/people.json', data)
  end

  def handle_rentals
    return if @rentals_list.empty?

    data = JSON.pretty_generate(@rentals_list)
    File.write('./data/rentals.json', data)
  end
end
