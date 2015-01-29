require_relative '../../spec_helper'

# Overwrite/Mock Chef::Handler
class Chef
  class Handler
    def run_status
      @run_status ||= RunStatus.new
    end

    def node
      @node ||= Node.new
    end

    class RunStatus
      def failed?
        false
      end
    end

    class Node
      def name
        'name'
      end
    end
  end
end

require_relative '../../../files/default/run_notifier'

SLACK_WEBHOOK_URL = "###"

if SLACK_WEBHOOK_URL == "###"
  puts "\033[1;35mCHANGE THE SLACK WEBHOOK URL, in order to test slack !!!\033[0m"
else
  describe 'RunNotifier::Notify' do

    let(:slack_params) do
      {
        enabled: true,
        webhook_url: SLACK_WEBHOOK_URL,
        channel: "#test",
        username: "FaiNow-Test"
      }
    end

    let(:hipchat_params) do
      {
        enabled: false
      }
    end

    let(:run_notifier) do
      RunNotifier::Notify.new(slack_params, hipchat_params)
    end

    it 'should send to slack but not hipchat on success' do
      expect{run_notifier.report}.to_not raise_error
    end
  end
end
