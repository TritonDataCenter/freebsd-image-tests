require 'spec_helper'

# Ensure we are cleaning up after the build
describe command('cat /tmp/installscript') do
  its(:stderr) { should match /No such file or directory/ }
end
