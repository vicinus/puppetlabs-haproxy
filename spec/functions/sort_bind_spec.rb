# frozen_string_literal: true

require 'spec_helper'

describe 'haproxy::sort_bind' do
  it { is_expected.to run.with_params({ '0.0.0.0:48001-48003' => [] }).and_return([['0.0.0.0:48001-48003', []]]) }
  it { is_expected.to run.with_params({ '192.168.0.1:80' => ['ssl'] }).and_return([['192.168.0.1:80', ['ssl']]]) }
  it { is_expected.to run.with_params(nil).and_raise_error(StandardError) }
end
