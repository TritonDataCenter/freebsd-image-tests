require 'spec_helper'

# Test for user-data. This needs to be set on the test VM.
if property[:name].include? "FreeBSD 10.0"
  describe file('/var/db/mdata-user-data') do
    it { should be_file }
    it { should_not be_executable }
    it { should be_owned_by 'root' }
  end
else
  describe file('/var/tmp/mdata-user-data') do
    it { should be_file }
    it { should_not be_executable }
    it { should be_owned_by 'root' }
  end
end

