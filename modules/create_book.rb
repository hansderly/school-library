module CreateBook
  def create_book
    puts "\n"
    puts 'Please provide these information :'
    print 'Title: '
    title = gets.chomp
    print 'Author : '
    author = gets.chomp
    new_book = Book.new(title, author)
    @books_list << {"title" => new_book.title, "author" => new_book.author}
    puts 'Book created successfully'
    puts "\n"
  end
end
