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
end
