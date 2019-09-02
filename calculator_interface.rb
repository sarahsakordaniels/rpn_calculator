
class MainMenu

  def self.greeting
    puts "Welcome to the Reverse Polish Notation (RPN) Calculator!"
  end

  def self.quit
    puts "Bye!"
    exit
  end

  def self.calculate
    stack = []
    operands = []
    @@input = gets.chomp
    case
      when /\d/
        stack.push(@@input.to_f)
        puts stack
      when "+", "-", "/", "*"
    end
  end

  def self.main_menu
    puts "\nPlease select from the following options:"
    puts "1. Open calculator"
    puts "2. How do I use this calculator?"
    puts "Type 'q' to exit."

    @@response = gets.chomp

    if @@response == "1"
      puts "Please enter an operator or operand:"
      self.calculate

    elsif @@response == "2"
        puts "This calculator evaluates math problems expressed in Reverse Polish Notation (RPN)."
        puts "RPN is a method for representing expressions where the operator symbol is placed after the arguments being operated on."
        puts "Example: '3+1' is expressed as '3 1 +'"
        puts "When using this calculator, please enter a single operator or operand per line."
        self.main_menu

    elsif @@response == "q"
      self.quit

    else
      puts "Please enter a valid option"
      self.main_menu
    end
  end

  self.greeting
  self.main_menu

end
