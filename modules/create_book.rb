module CreateBook
  def create_book
    puts "\n"
    puts 'Please provide these information :'
    print 'Title: '
    title = gets.chomp
    print 'Author : '
    author = gets.chomp
    new_book = Book.new(title, author)
    save_book(title, author)
    @books_list << new_book
    puts 'Book created successfully'
    puts "\n"
  end

  def save_book(title, author)
    file = File.open("#{Dir.pwd}/data/book.json", 'w')
    puts file
    puts title, author
  end
end
