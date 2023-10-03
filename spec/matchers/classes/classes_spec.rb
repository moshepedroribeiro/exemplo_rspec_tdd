require 'string_nao_vazia'

describe 'Classes' do
  it 'be instance of' do
    expect(10).to be_instance_of(Integer) # Exatamente a classe
  end

  it 'be kind of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer) # pode ser por herança
  end

  it 'be respond_to' do
    expect('ruby').to respond_to(:count)
    expect('ruby').to respond_to(:size)
  end

  it 'be a / be an' do
    str = StringNaoVazia.new
    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)

    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)
  end
end