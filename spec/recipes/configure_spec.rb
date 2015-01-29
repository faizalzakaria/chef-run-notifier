require_relative '../spec_helper'

describe 'run-notifier::configure' do

  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  it 'should install hipchat' do
    expect(chef_run).to install_gem_package("hipchat")
  end

  it 'should not install slack' do
    expect(chef_run).to_not install_gem_package("slack")
  end
end
