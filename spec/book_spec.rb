require_relative '../book'

describe Book do
  context 'when creating a valid book' do
    title = 'The Hobbit'
    author = 'J.R.R. Tolkien'
    book = Book.new(title, author)

    it 'should be a valid book' do
      expect(book).to be_instance_of(Book)
    end

    it 'title should be "The Hobbit"' do
      expect(book.title).to eq(title)
    end

    it 'author should be "J.R.R. Tolkien"' do
      expect(book.author).to eq(author)
    end
  end
end
