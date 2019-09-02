#
# def calculate
#     puts "Enter a problem"
#     input = gets.chomp
#     input.split(//).each do |char|
#       puts char
#       if char == "+"
#         @operator << char
#       end
#   end
# end

puts "Welcome to the Reverse Polish Notation (RPN) Calculator!
\nPlease select from the following options:
\n1. Open calculator
\n2. How do I use this calculator?"

begin
option = gets.chomp

if option == "2"
  puts "This calculator evaluates math problems expressed in Reverse Polish Notation (RPN)."
  puts "RPN is a method for representing expressions where the operator symbol is placed after the arguments being operated on"
  puts "Example:"
  puts "'3+1' is expressed as '3 1 +'"
elsif option == "1"
  calculate
end
