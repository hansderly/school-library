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

class App
  include ListAllBooks
  include ListAllPeople
  include CreatePerson
  include CreateBook
  include CreateRental
  include ListAllRentals

  def initialize
    @books_list = []
    @people_list = []
    @rentals_list = []
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
