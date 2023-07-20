# frozen_string_literal: true

require 'spec_helper'

describe 'haproxy::generate_error_message' do
  it { is_expected.to run.with_params('Invalid IP address or hostname 2323.23.23').and_raise_error('Invalid IP address or hostname 2323.23.23') }
  it { is_expected.to run.with_params('Port 181400 is outside of range 1-65535').and_raise_error('Port 181400 is outside of range 1-65535') }
  it { is_expected.to run.with_params(nil).and_raise_error(StandardError) }
end
