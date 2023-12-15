class Solver
  def factorial(number)
    raise ArgumentError, 'Input must be a non-negative integer' if number.negative?

    (1..number).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(input_number)
    return 'fizzbuzz' if (input_number % 3).zero? && (input_number % 5).zero?
    return 'fizz' if (input_number % 3).zero?
    return 'buzz' if (input_number % 5).zero?

    input_number.to_s
  end
end
console = Solver.new
puts console.factorial(5)
puts console.reverse('hello')
puts console.fizzbuzz(5)
