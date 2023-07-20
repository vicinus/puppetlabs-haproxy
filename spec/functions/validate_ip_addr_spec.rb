# frozen_string_literal: true

require 'spec_helper'

describe 'haproxy::validate_ip_addr' do
  it { is_expected.to run.with_params('10.0.0.10').and_return(true) }
  it { is_expected.to run.with_params('256.168.0.1').and_return(false) }
  it { is_expected.to run.with_params(nil).and_raise_error(StandardError) }
end
