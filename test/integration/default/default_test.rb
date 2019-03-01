# frozen_string_literal: true

describe file('/tmp/thing') do
  its(:content) { should eq('Some stuff') }
end
