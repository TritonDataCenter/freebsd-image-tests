require 'spec_helper'

# Ensure guest tools are installed in

# For FreeBSD 10, the guest tools were installed in /lib/smartdc
# For FreeBSD 11, they are instaled in /lib/triton

if property[:name].include? "FreeBSD 10.0"
  describe file('/lib/smartdc/add-network-interface') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/smartdc/firstboot') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/smartdc/format-secondary-disk') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/smartdc/lib_smartdc_scripts.cfg') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/smartdc/run-operator-script') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/smartdc/run-user-script') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/smartdc/set-hostname') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/smartdc/set-root-authorized-keys') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/smartdc/set-rootpassword') do
    it { should be_file }
    it { should be_executable }
  end
else
  describe file('/lib/triton/add-network-interface') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/triton/firstboot') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/triton/format-secondary-disk') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/triton/lib_triton_scripts.cfg') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/triton/run-operator-script') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/triton/run-user-script') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/triton/set-hostname') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/triton/set-root-authorized-keys') do
    it { should be_file }
    it { should be_executable }
  end

  describe file('/lib/triton/set-rootpassword') do
    it { should be_file }
    it { should be_executable }
  end
end
