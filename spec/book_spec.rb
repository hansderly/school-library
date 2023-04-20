require_relative '../book'

describe Book do
  context "when creating a valid book" do
    it "should be valid" do
      title = 'The Hobbit'
      author = 'J.R.R. Tolkien'
      book = Book.new(title, author)
      expect(book).to be_instance_of(Book)
      expect(book.title).to eq(title)
      expect(book.author).to eq(author)
    end
  end
end
