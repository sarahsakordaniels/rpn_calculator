class Calculator

  def initialize(input)
    @input = input
  end

  def calculate
    stack = []
    operands = []
    @input.chomp
    case thing
      when /\d/
        stack.push(thing.to_f)
      when "+", "-", "/", "*"
        operands.push(thing)
    end
  end
end
