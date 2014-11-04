require 'spec_helper'

# Ensure we have mdata-client tools installed

describe file('/usr/sbin/mdata-get') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/sbin/mdata-put') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/sbin/mdata-delete') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/sbin/mdata-list') do
  it { should be_file }
  it { should be_executable }
end
