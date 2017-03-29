require 'spec_helper'


describe file('/boot/loader.conf') do
  it { should be_file }
  it { should contain "autoboot_delay=\"5\"" }
  it { should contain "verbose_loading=\"YES\"" }
  it { should contain "hw.usb.disable_enumeration=1" }
  it { should contain "hw.usb.no_boot_wait=1" }
  it { should contain "hw.usb.no_shutdown_wait=1" }
end

