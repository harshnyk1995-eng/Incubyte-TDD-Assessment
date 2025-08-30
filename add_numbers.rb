class Calculator
  def add_numbers(string)
    numbers = string.scan(/-?\d+/).map(&:to_i)
    negatives = numbers.select { |n| n.negative? }

    if negatives.any?
      "negative numbers not allowed: #{negatives.join(', ')}"
    else
      numbers.sum
    end
  end
end



array = "1\n2,-3-4"
calc = Calculator.new
add_numbers = calc.add_numbers(array)
p add_numbers