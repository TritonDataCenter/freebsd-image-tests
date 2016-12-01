require 'spec_helper'

if property[:name].include? "FreeBSD 10.0"
  describe file('/var/tmp/user-script') do
    it { should be_file }
    it { should be_owned_by 'root' }
  end

  describe file('/var/tmp/user-script.lock') do
    it { should be_file }
    it { should be_owned_by 'root' }
  end
else
  describe file('/var/tmp/mdata-user-script') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_executable }
  end
end

describe file('/var/tmp/test') do
  it { should be_file }
end
