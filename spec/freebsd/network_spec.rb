require 'spec_helper'

# Tests to validate network and interfaces are properly configured 

# Make sure we cang ping out etc. 
describe host('google.com') do
	it { should be_reachable }
  it { should be_resolvable }
end

describe file('/etc/resolv.conf') do
  it { should be_file }
	it { should contain "nameserver 8.8.8.8" }
	it { should contain "nameserver 8.8.4.4" }
end

