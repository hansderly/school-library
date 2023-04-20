require 'json'

module ReadData
  def read_books
    return [] unless File.exist?('./data/books.json') && !File.empty?('./data/books.json')

    JSON.parse(File.read('./data/books.json'))
  end
end

def read_people
  return [] unless File.exist?('./data/people.json') && !File.empty?('./data/people.json')

  JSON.parse(File.read('./data/people.json'))
end

def read_rentals
  return [] unless File.exist?('./data/rentals.json') && !File.empty?('./data/rentals.json')

  JSON.parse(File.read('./data/rentals.json'))
end
