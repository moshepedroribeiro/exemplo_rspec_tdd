require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  let(:pessoa) { Pessoa.new }

  it 'have attributes' do
    pessoa.nome = 'Moshé'
    pessoa.idade = 24

    expect(pessoa).to have_attributes(nome: a_string_starting_with('M'), idade: (a_value >= 20))
  end

  it 'have attributes' do
    pessoa.nome = 'Lucas'
    pessoa.idade = 22

    expect(pessoa).to have_attributes(nome: a_string_starting_with('L'), idade: (a_value >= 20))
  end

end