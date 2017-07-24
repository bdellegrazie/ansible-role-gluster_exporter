require 'spec_helper'

describe port(9189) do
  it { should be_listening }
end

describe service('gluster_exporter') do
  it { should be_enabled }
  it { should be_running }
end
