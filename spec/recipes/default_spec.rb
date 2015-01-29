require_relative '../spec_helper'

describe 'run-notifier::default' do
  handler_path = "files/default"

  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.set['chef_handler']['handler_path'] = handler_path
      node.set['run-notifier']['hipchat']['enabled'] = true
      node.set['run-notifier']['slack']['enabled'] = false
    end.converge(described_recipe)
  end

  it 'should enable RunNotifier::Notify' do
    expect(chef_run).to enable_chef_handler("RunNotifier::Notify")
  end

  it 'should cook file run_notifier' do
    expect(chef_run).to create_cookbook_file("files/default/run_notifier.rb")
  end

  it 'should cook file run_notifier' do
    expect(chef_run).to create_cookbook_file("files/default/run_notifier.rb")
  end

  it 'should install hipchat' do
    expect(chef_run).to install_gem_package("hipchat")
  end

  it 'should not install slack' do
    expect(chef_run).to_not install_gem_package("slack")
  end
end
