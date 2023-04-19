require_relative './teacher'
require_relative './student'
require_relative './book'
require_relative './rental'
require_relative './modules/list_all_books'
require_relative './modules/list_all_people'
require_relative './modules/list_all_rentals'
require_relative './modules/create_person'
require_relative './modules/create_book'
require_relative './modules/create_rental'
require_relative './data/read_data'

class App
  include ListAllBooks
  include ListAllPeople
  include CreatePerson
  include CreateBook
  include CreateRental
  include ListAllRentals
  include ReadData

  def initialize
    @books_list = read_books
    @people_list = read_people
    @rentals_list = read_rentals
  end

  def actions_management(choice)
    action_to_perform = ACTIONS[choice]
    if action_to_perform.nil?
      puts "\nYour choice is incorrect. Must between 1-7. Please retry...\n\n"
    else
      send(action_to_perform)
    end
  end
end
