
default[:run_notifier][:slack] = {}
default[:run_notifier][:slack][:enabled] = false
default[:run_notifier][:slack][:webhook_url] = "https://example.com"
default[:run_notifier][:slack][:channel] = "#default"
default[:run_notifier][:slack][:username] = "FaiNow"

default[:run_notifier][:hipchat] = {}
default[:run_notifier][:hipchat][:enabled] = false
default[:run_notifier][:hipchat][:api_token] = "1234"
default[:run_notifier][:hipchat][:username] = "FaiNow"
default[:run_notifier][:hipchat][:room_name] = "default"
default[:run_notifier][:hipchat][:notify] = true

