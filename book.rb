class Book
  attr_accessor :title, :author, :rentals
  attr_reader :id

  def initialize(title, author)
    @id = Random.rand(1..100)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end
