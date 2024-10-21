require 'rspec'
require_relative 'practice'

RSpec.describe Calculator do
  before(:each) do
    @calculator = Calculator.new
  end

  describe '#add' do
    it 'adds two positive numbers' do
      expect(@calculator.add(1, 2)).to eq(3)
    end

    it 'adds a positive and a negative number' do
      expect(@calculator.add(5, -3)).to eq(2)
    end

    it 'adds two negative numbers' do
      expect(@calculator.add(-1, -1)).to eq(-2)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(@calculator.subtract(5, 3)).to eq(2)
    end

    it 'subtracts a larger number from a smaller number' do
      expect(@calculator.subtract(3, 5)).to eq(-2)
    end

    it 'subtracts a negative number' do
      expect(@calculator.subtract(5, -3)).to eq(8)
    end
  end

  describe '#multiply' do
    it 'multiplies two positive numbers' do
      expect(@calculator.multiply(2, 3)).to eq(6)
    end

    it 'multiplies a positive and a negative number' do
      expect(@calculator.multiply(5, -2)).to eq(-10)
    end

    it 'multiplies two negative numbers' do
      expect(@calculator.multiply(-2, -3)).to eq(6)
    end
  end

  describe '#divide' do
    it 'divides two numbers' do
      expect(@calculator.divide(10, 2)).to eq(5)
    end

    it 'raises an error when dividing by zero' do
      expect { @calculator.divide(10, 0) }.to raise_error(ZeroDivisionError, "Division by zero is not allowed.")
    end

    it 'divides a negative number' do
      expect(@calculator.divide(-10, 2)).to eq(-5)
    end
  end
end
