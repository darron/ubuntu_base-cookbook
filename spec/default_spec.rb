# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'ubuntu_base::default' do
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

  it 'installs iotop' do
    expect(chef_run).to install_package('iotop')
  end

  it 'installs glances' do
    expect(chef_run).to install_package('glances')
  end

  it 'installs goaccess' do
    expect(chef_run).to install_package('goaccess')
  end

  it 'installs ntp' do
    expect(chef_run).to install_package('ntp')
  end

  it 'enables the ntp service' do
    expect(chef_run).to enable_service('ntp')
  end

  it 'starts the ntp service' do
    expect(chef_run).to start_service('ntp')
  end

  it 'installs the mailutils package' do
    expect(chef_run).to install_package('mailutils')
  end

  it 'installs the zsh package' do
    expect(chef_run).to install_package('zsh')
  end

  it 'installs the vim package' do
    expect(chef_run).to install_package('vim')
  end

  it 'includes the `sysdig` recipe' do
    expect(chef_run).to include_recipe('sysdig::default')
  end
end
