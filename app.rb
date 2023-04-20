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
require_relative './app'
require './modules/menu'
require_relative './data/handle_exit'

ACTIONS = {
  1 => :list_all_books,
  2 => :list_all_people,
  3 => :create_person,
  4 => :create_book,
  5 => :create_rental,
  6 => :list_all_rental
}.freeze

class App
  include ListAllBooks
  include ListAllPeople
  include CreatePerson
  include CreateBook
  include CreateRental
  include ListAllRentals
  include ReadData
  include Menu
  include HandleExit

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

  def run
    choice = 0
    while choice != 7
      display_menu
      choice = gets.chomp.to_i
      if choice == 7
        puts 'Thank you for using this app!'
        handle_exit
        exit
      end
      method_name = ACTIONS[choice]
      if method_name.nil?
        puts "\nYour choice is incorrect. Must between 1-7. Please try again...\n\n"
      else
        # method_tocall = app.method(method_name)
        method(method_name).call
      end
    end
  end
end
