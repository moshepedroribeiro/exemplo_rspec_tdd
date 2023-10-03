require 'calculator'

RSpec.describe Calculator, 'Classe Calculadora' do
  subject(:calc) { Calculator.new }

  context '#division' do
    it 'divide by zero' do
      expect{subject.division(3, 0)}.to raise_error(ZeroDivisionError)
      expect{subject.division(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.division(3, 0)}.to raise_error("divided by 0")
    end
  end

  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(5, 7)
      expect(result).not_to eq(23412)
    end

    it 'with negative and positive numbers' do
      result = calc.sum(-5, 7)
      expect(result).not_to eq(12)
    end

    it 'with negative numbers' do
      result = calc.sum(-5, -7)
      expect(result).not_to eq(-122)
    end
  end
end