# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'ubuntu-base::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs python-software-properties' do
    expect(chef_run).to install_package('python-software-properties')
  end

  it 'installs curl' do
    expect(chef_run).to install_package('curl')
  end

  it 'installs wget' do
    expect(chef_run).to install_package('wget')
  end

  it 'installs lynx' do
    expect(chef_run).to install_package('lynx-cur')
  end

  it 'installs screen' do
    expect(chef_run).to install_package('screen')
  end

  it 'installs nmap' do
    expect(chef_run).to install_package('nmap')
  end

  it 'installs whois' do
    expect(chef_run).to install_package('whois')
  end

  it 'installs traceroute' do
    expect(chef_run).to install_package('traceroute')
  end

  it 'installs ngrep' do
    expect(chef_run).to install_package('ngrep')
  end

  it 'installs lsof' do
    expect(chef_run).to install_package('lsof')
  end

  it 'installs tmux' do
    expect(chef_run).to install_package('tmux')
  end

  it 'installs unzip' do
    expect(chef_run).to install_package('unzip')
  end

  it 'installs tree' do
    expect(chef_run).to install_package('tree')
  end

  it 'installs dnsutils' do
    expect(chef_run).to install_package('dnsutils')
  end

  it 'installs dnstracer' do
    expect(chef_run).to install_package('dnstracer')
  end

  it 'installs bzip2' do
    expect(chef_run).to install_package('bzip2')
  end

  it 'installs xz-utils' do
    expect(chef_run).to install_package('xz-utils')
  end

  it 'installs htop' do
    expect(chef_run).to install_package('htop')
  end

  it 'installs git-core' do
    expect(chef_run).to install_package('git-core')
  end
end
