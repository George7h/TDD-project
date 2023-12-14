# spec/solver_spec.rb
require './solver'

describe Solver do
  describe '#factorial' do
    it 'returns 1 for 0' do
      expect(subject.factorial(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(subject.factorial(1)).to eq(1)
    end

    it 'returns the correct factorial for a positive integer' do
      expect(subject.factorial(5)).to eq(120)
    end

    it 'raises an ArgumentError for a negative integer' do
      expect { subject.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    end
  end
  describe '#reverse' do
    it 'returns the reversed word' do
      expect(subject.reverse('hello')).to eq('olleh')
    end    
    it 'returns the reversed word for any input' do
      expect(subject.reverse('world')).to eq('dlrow')
    end
  end
  describe '#fizzbuzz' do
    it 'returns "fizzbuzz" for a multiple of 3 and 5' do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'returns "fizz" for a multiple of 3' do
      expect(subject.fizzbuzz(6)).to eq('fizz')
    end
    it 'returns "buzz" for a multiple of 5' do
      expect(subject.fizzbuzz(10)).to eq('buzz')
    end
    it 'returns the number as a string for any other case' do
      expect(subject.fizzbuzz(7)).to eq('7')
    end
  end
end
5:39
then this is the full solver file, add what not there already:
##solver.rb
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
