[![Build Status](https://travis-ci.org/faizalzakaria/chef-run-notifier.svg?branch=master)](https://travis-ci.org/faizalzakaria/chef-run-notifier)

chef-run-notifier Cookbook
==========================

Run Notifier to send notification to HipChat and / or Slack if chef run successfully or failed.

Requirements
------------

Attributes
----------

#### chef-run-notifier::default
|Key|Type|Description|Default|
|---|----|-----------|-------|
|['run_notifier']['slack']['enabled']|Boolean|Wheather to enable slack or not|false|
|['run_notifier']['slack']['webhook_url']|String|Webhook URL|https://abc.com|
|['run_notifier']['slack']['channel']|String|Channel|#default|
|['run_notifier']['slack']['username']|String|Username|FainNow|
|['run_notifier']['hipchat']['enabled']|Boolean|Wheather to enable hicphat or not|false|
|['run_notifier']['hipchat']['api_token']|String|HipChat API token|1234|
|['run_notifier']['hipchat']['username']|String|Username|FaiNow|
|['run_notifier']['hipchat']['room_name']|String|Room name|default|
|['run_notifier']['hipchat']['notify']|Boolean|Whether to notify user or not|

Usage
-----
#### chef-run-notifier::default

Just include `chef-run-notifier` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[run-notifier]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author: Faizal Zakaria

