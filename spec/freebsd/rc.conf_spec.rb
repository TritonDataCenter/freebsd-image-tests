require 'spec_helper'


# Make sure /etc/rc.conf has approriate settings
describe file('/etc/rc.conf') do
  it { should be_file }
  it { should contain "fsck_y_enable=\"YES\"" }
end

