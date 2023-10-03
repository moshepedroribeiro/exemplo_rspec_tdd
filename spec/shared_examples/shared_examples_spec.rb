require 'pessoa'

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  it 'feliz!' do
    pessoa.feliz!
    expect(pessoa.status).to eq("Sentindo-se Feliz!")
  end

  it 'triste!' do
    pessoa.triste!
    expect(pessoa.status).to eq("Sentindo-se Triste!")
  end

  it 'contente!' do
    pessoa.contente!
    expect(pessoa.status).to eq("Sentindo-se Contente!")
  end
end