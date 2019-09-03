class Calculator

  def self.greeting
    puts "Welcome to the Reverse Polish Notation (RPN) Calculator!"
  end

  def self.quit
    puts "Bye!"
    exit
  end

  def self.operate(a, b, operand)
    case operand
    when "+"
      b+a
    when "-"
      b-a
    when "*"
      b*a
    when "/"
      b/a
    end
  end

  def self.calculate
    @stack = []
    @operators = []

    loop do
      @input = gets.chomp
      case @input
          when /\d/
            @stack << @input.to_i
          when "+", "-", "/", "*"
            @stack.push(self.operate(@stack.pop, @stack.pop, @input))
            puts @stack.last
          when "q"
            break
          else
            puts "Invalid input. Please enter a number or operator."
          end
        end
    end

  def self.main_menu
    puts "\nPlease select from the following options:"
    puts "1. Open calculator"
    puts "2. How do I use this calculator?"
    puts "Type 'q' to exit."

    @@response = gets.chomp

    if @@response == "1"
      puts "Please enter a number or operator symbol (+, -, /, *):"
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
