RSpec::Matchers.define :be_multiple_of do |expected|

  # expected = 3, actual = 18 = subject
  match do |actual|
    actual % expected == 0
  end

  failure_message do |actual|
    "expected #{actual} would be a multiple of #{expected}"
  end

  description do
    "be a multiple of #{expected}"
  end
end

describe 17, 'Custom Matcher' do
  it { is_expected.to be_multiple_of(3) }
end