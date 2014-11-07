require 'spec_helper'

# Tests to ensure ntp is locked down 

describe file('/boot/loader.conf') do
  it { should be_file }
  it { should contain "autoboot_delay=\"5\"" }
end

