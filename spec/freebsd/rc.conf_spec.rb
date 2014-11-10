require 'spec_helper'


# Make sure /etc/rc.conf has approriate settings
describe file('/etc/rc.conf') do
  it { should be_file }
  it { should contain "fsck_y_enable=\"YES\"" }
	it { should contain "dumpdev=\"AUTO\"" }
  it { should contain "smartdc_enable=\"YES\"" }
	it { should contain "sshd_enable=\"YES\"" }
	it { should contain "ntpd_enable=\"YES\"" }
	it { should contain "ntpd_sync_on_start=\"YES\"" }
  it { should contain "hostname=" }
end

