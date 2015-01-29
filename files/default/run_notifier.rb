module RunNotifier
  class Notify < Chef::Handler

    def initialize(slack_params, hipchat_params)
      initialize_hipchat(hipchat_params)
      initialize_slack(slack_params)
    end

    def initialize_hipchat(params)
      @hipchat_params = hipchat_params
      require 'hipchat' if @hipchat_params[:enabled]
    end

    def initialize_slack(params)
      @slack_params = slack_params
      require 'slack-notifier' if @slack_params[:enabled]
    end

    def report
      if run_status.failed?
        msg = "Failure on #{node.name}: #{run_status.formatted_exception}"
      else
        msg = "Chef run succesfully on #{node.name}"
      end

      send_to_hipchat(msg)
      send_to_slack(msg)
    end

    private

    def send_to_hipchat(msg)
      return unless @hipchat_params[:enabled]
      hipchat[@hipchat_params[:room_name].send(@hipchat_params[:username], msg, :notify => @hipchat_params[:notify])
    end

    def send_to_slack
      return unless @slack_params[:enabled]
      slack.channel = @slack_params[:channel]
      slack.username = @slack_params[:username]
      slack.ping msg
    end

    def hipchat
      @hipchat ||= HipChat::Client.new(@hipchat_params[:api_token])
    end

    def slack
      @slack ||= Slack::Notifier.new(@slack_params[:webhook_url])
    end
  end
end
