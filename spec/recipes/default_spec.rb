require_relative '../spec_helper'

describe 'run-notifier::default' do
  # Use an explicit subject
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes the other_cookbook' do
  end
end

