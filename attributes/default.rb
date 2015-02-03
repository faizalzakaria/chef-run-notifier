#
# Author:: Faizal F Zakaria (phaibusiness@gmail.com)
# Attributes:: default
#
# Copyright 2015, Faizal F Zakaria
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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

