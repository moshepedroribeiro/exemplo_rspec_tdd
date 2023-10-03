describe 'Matchers de Comparação' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 2
    expect(5).to be >= 5
  end

  it '<' do
    expect(5).to be < 10
  end

  it '<=' do
    expect(5).to be <= 12
    expect(5).to be <= 5
  end

  it 'be between inclusive' do
    expect(5).to be_between(2, 7).inclusive
    expect(2).to be_between(2, 7).inclusive
    expect(7).to be_between(2, 7).inclusive
  end

  it 'be between exclusive' do
    expect(6).to be_between(2, 7).exclusive
    expect(1).to be_between(2, 7).exclusive
    expect(8).to be_between(2, 7).exclusive
  end

  it 'be between exclusive' do
    expect(6).to be_between(2, 7).exclusive
    expect(1).to be_between(2, 7).exclusive
    expect(8).to be_between(2, 7).exclusive
  end

  it 'match' do
    expect('fulanodetal@gmail.com').to match(/..@../)
  end

  it 'start with' do
    expect('Fulano de tal').to start_with('Fulano')
    expect([1, 2, 3]).to start_with(1)
  end

  it 'end with' do
    expect('Fulano de tal').to end_with('tal')
    expect([1, 2, 3]).to end_with(3)
  end
end