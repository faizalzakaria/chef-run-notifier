require_relative '../spec_helper'

describe 'run-notifier::default' do
  handler_path = File.join('files', 'default')

  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.set['chef_handler']['handler_path'] = handler_path
      node.set['run_notifier']['hipchat']['enabled'] = true
      node.set['run_notifier']['slack']['enabled'] = false
    end.converge(described_recipe)
  end

  it 'should enable StatusNotifierHandler' do
    expect(chef_run).to enable_chef_handler("StatusNotifierHandler")
  end

  it 'should install chef-handler-status_notifier' do
    expect(chef_run).to upgrade_chef_gem("chef-handler-status_notifier")
  end
end
