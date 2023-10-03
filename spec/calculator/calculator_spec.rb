require 'calculator'

describe Calculator, 'Classe Calculadora' do
  subject(:calc) { Calculator.new }

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