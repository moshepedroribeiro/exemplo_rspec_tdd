describe 'Test Double' do
  it '--' do
    user = double('User')
    # allow(user).to receive_messages(name: 'Moshé', password: '123456')

    allow(user).to receive(:name).and_return('Moshé')
    allow(user).to receive(:password).and_return('123456')

    puts user.name
    puts user.password
  end

  it 'as null object' do
    user = double('User').as_null_object
    allow(user).to receive(:name).and_return('Moshé')
    allow(user).to receive(:password).and_return('123456')
    user.name
    user.password
    user.abc
  end
end