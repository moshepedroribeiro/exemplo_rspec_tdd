describe 'Matcher output' do
  it { expect { puts "Moshé" }.to output.to_stdout }
  it { expect { print "Moshé" }.to output("Moshé").to_stdout }
  it { expect { puts "Moshé Ribeiro" }.to output(/Moshé/).to_stdout }

  it { expect { warn "Moshé" }.to output.to_stderr }
  it { expect { warn "Moshé" }.to output("Moshé\n").to_stderr }
  it { expect { warn "Moshé Ribeiro" }.to output(/Moshé/).to_stderr }
end