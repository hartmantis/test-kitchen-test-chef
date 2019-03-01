# frozen_string_literal: true

require_relative '../spec_helper'

describe 'test-kitchen-test::default' do
  platform 'ubuntu'

  it { is_expected.to create_file('/tmp/thing').with(content: 'Some stuff') }
end
