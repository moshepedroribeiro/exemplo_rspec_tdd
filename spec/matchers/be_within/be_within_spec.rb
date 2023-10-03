describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12) } # Delta, diferença máxima de 0.5 entre 12.5 e 12 ou 11.5 e 12
  it { expect([11.6, 12.1, 12.4]).to all(be_within(0.5).of(12)) }
end