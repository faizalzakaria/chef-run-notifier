chef-run-notifier Cookbook
==========================

Run Notifier to send notification to HipChat and / or Slack if chef run successfully or failed.

Requirements
------------

Attributes
----------

e.g.
#### chef-run-notifier::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['run_notifier']['slack']['enabled']</tt></td>
    <td>Boolean</td>
    <td>Wheather to enable slack or not</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['run_notifier']['slack']['webhook_url']</tt></td>
    <td>String</td>
    <td>Webhook URL</td>
    <td><tt>https://abc.com</tt></td>
  </tr>
  <tr>
    <td><tt>['run_notifier']['slack']['channel']</tt></td>
    <td>String</td>
    <td>Channel</td>
    <td><tt>#default</tt></td>
  </tr>
  <tr>
    <td><tt>['run_notifier']['slack']['username']</tt></td>
    <td>String</td>
    <td>Username</td>
    <td><tt>FaiNow</tt></td>
  </tr>
  <tr>
    <td><tt>['run_notifier']['hipchat']['enabled']</tt></td>
    <td>Boolean</td>
    <td>Wheather to enable hicphat or not</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['run_notifier']['hipchat']['api_token']</tt></td>
    <td>String</td>
    <td>HipChat API token</td>
    <td><tt>1234</tt></td>
  </tr>
  <tr>
    <td><tt>['run_notifier']['hipchat']['username']</tt></td>
    <td>String</td>
    <td>Username</td>
    <td><tt>FaiNow</tt></td>
  </tr>
  <tr>
    <td><tt>['run_notifier']['hipchat']['room_name']</tt></td>
    <td>String</td>
    <td>Room name</td>
    <td><tt>default</tt></td>
  </tr>
  <tr>
    <td><tt>['run_notifier']['hipchat']['notify']</tt></td>
    <td>Boolean</td>
    <td>Wheather to notify user or not</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### chef-run-notifier::default

e.g.
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

e.g.

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author: Faizal Zakaria

