require 'spec_helper'
describe package('bash') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

escribe package('node') do
  it { should be_installed }
end

escribe package('npm') do
  it { should be_installed }
end

describe package('ntp') do
  it { should be_installed }
end

describe package('vim-lite') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end
