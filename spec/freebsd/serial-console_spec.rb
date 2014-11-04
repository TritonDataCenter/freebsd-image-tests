require 'spec_helper'

# Enabling serial and internal consoles
describe file('/boot.config') do
  it { should be_file }
  it { should contain "-Dh" }
end

describe file('/etc/ttys') do
  it { should be_file }
  it { should contain "cuau0   \"/usr/libexec/getty std.38400\"  xterm   on  secure" }
end
