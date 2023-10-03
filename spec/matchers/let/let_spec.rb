$counter = 0

describe 'let' do
  let(:counter) { $counter += 1 }

  it 'Memoriza o valor' do
    expect(count).to eq(1) # Primeira vez, é carregado
    expect(count).to eq(1) # Segunda vez, não carrega, fica em cache
  end

  it 'Não é cacheado entre os testes' do
    expect(count).to eq(2) # Primiera vez deste teste, ele é carregado o let
  end
end