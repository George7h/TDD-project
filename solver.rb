class Solver
  def factorial(number)
    raise ArgumentError, 'Input must be a non-negative integer' if number.negative?

    (1..number).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end
end
console = Solver.new
puts console.factorial(5)
puts console.reverse('hello')
