require 'json'

module ReadData
  def read_books
    books = []
    return books unless File.exist?('./data/books.json') && !File.zero?('./data/books.json')

    JSON.parse(File.read('./data/books.json'))
  end
end