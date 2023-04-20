require_relative '../rental'

describe Rental do
  date = '04/20/2023'
  book_id = 2
  person_id = 23
  rental = Rental.new(date, book_id, person_id)

  context 'when creating a rental' do
    it 'should be an instance of Rental' do
      expect(rental).to be_instance_of(Rental)
    end

    it 'should have a date' do
      expect(rental.date).to eq(date)
    end

    it 'title should contain the person id' do
      expect(rental.person).to eq(person_id)
    end

    it 'title should contain the book id' do
      expect(rental.book).to eq(book_id)
    end
  end
end
