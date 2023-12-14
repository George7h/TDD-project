class Solver
  def factorial(number)
    raise ArgumentError, 'Input must be a non-negative integer' if number.negative?

    (1..number).reduce(1, :*)
  end
end
