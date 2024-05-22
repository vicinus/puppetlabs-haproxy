require 'spec_helper'

describe 'Haproxy::Ports' do
  # Sensible port declarations
  it { is_expected.to allow_value(1234) }
  it { is_expected.to allow_value([1234]) }
  it { is_expected.to allow_value([1234, 5678]) }
  it { is_expected.to allow_value([]) }

  # Bad multi port declaration - consider droping their support
  # in the future.
  it { is_expected.to allow_value('1234') }
  it { is_expected.to allow_value('1234,5678') }
  it { is_expected.to allow_value(['1234']) }
  it { is_expected.to allow_value(['1234', '4567']) }

  # Disallowed
  it { is_expected.not_to allow_value('') }
  # These cause errors already in current rspec tests so disallow here as well.
  it { is_expected.not_to allow_value(['1234,5678']) }
  it { is_expected.not_to allow_value('1234, 5678') }
end
