require_relative './selection'

ACTIONS = {
  1 => :list_all_books,
  2 => :list_all_people,
  3 => :create_person,
  4 => :create_book,
  5 => :create_rental,
  6 => :list_all_rental
}.freeze

def main
  puts "Welcome to School Library App!\n\n"

  selection = Selection.new
  selection.app
end

main
