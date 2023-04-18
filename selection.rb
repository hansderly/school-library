require_relative './app'
require './modules/menu'

class Selection < App
  include Menu

  def app
    app = App.new
    choice = 0
    while choice != 7
      display_menu
      choice = gets.chomp.to_i
      if choice == 7
        puts 'Thank you for using this app!'
        exit
      end
      method_name = ACTIONS[choice]
      if method_name.nil?
        puts "\nYour choice is incorrect. Must between 1-7. Please try again...\n\n"
      else
        method_tocall = app.method(method_name)
        method_tocall.call
      end
    end
  end
end
