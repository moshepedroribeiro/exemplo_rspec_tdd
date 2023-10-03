require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #   @pessoa = Pessoa.new
  # end
  #
  # after(:each) do
  #   @pessoa.nome = "Sem nome"
  #   puts ">>> #{@pessoa.inspect} <<<"
  # end

  # # Antes de todos os testes usando o :suite
  # before(:suite) do
  #   puts ">>> Antes de toda a suíte de testes <<<"
  # end
  #
  # after(:suite) do
  #   puts ">>> Depois de toda a suíte de testes <<<"
  # end
  #
  # # Antes de cada describe o :context e o :all
  # before(:context) do
  #   puts ">>> Antes de todos os testes <<<"
  # end
  #
  # after(:all) do
  #   puts ">>> Depois de todos os testes <<<"
  # end

  around(:each) do |teste|
    puts "Antes"
    @pessoa = Pessoa.new

    teste.run

    @pessoa.nome = "Sem nome"
    puts ">>> #{@pessoa.inspect} <<<"
  end

  it 'have attributes' do
    @pessoa.nome = 'Moshé'
    @pessoa.idade = 24

    expect(@pessoa).to have_attributes(nome: a_string_starting_with('M'), idade: (a_value >= 20))
  end

  it 'have attributes' do
    @pessoa.nome = 'Lucas'
    @pessoa.idade = 22

    expect(@pessoa).to have_attributes(nome: a_string_starting_with('L'), idade: (a_value >= 20))
  end

end