chef-run-notifier Cookbook
==========================

Run Notifier to notify if the chef run succeed or failed.

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
    <td><tt>['chef-run-notifier']['slack']</tt></td>
    <td>Boolean</td>
    <td>Wheather to enable slack or not</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-run-notifier']['hipchat']</tt></td>
    <td>Boolean</td>
    <td>Wheather to enable hicphat or not</td>
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
    "recipe[chef-run-notifier]"
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
