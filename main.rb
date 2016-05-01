# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here
#puts experienced?(@candidates[0])

# puts find(5)

#binding.pry

#pp qualified_candidates

#Task 6 REPL

def repl_menu
  go_on = false
  while !go_on do
  puts "Type in either: 1. 'find 5', 2. 'all', 3. 'qualified', or 4. 'quit' or any letter to quit"
  user_input = gets.chomp
  case user_input
    when "quit"
      go_on = true
    when "find 5"
      puts find(5)
    when "all"
      pp @candidates
    when "qualified"
      pp qualified_candidates
    else
      go_on = true
  end
  end
end

repl_menu