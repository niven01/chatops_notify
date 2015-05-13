chatops_notify Cookbook
=======================

This is a library cook that provides a resource to notify your favourite chatops client.

Supports
------------
* Slack
* Hipchat


Usage
-----
Add cookbook as a dependncy in metadata.rb


#### `Slack`  

#### Attribute parameters  

* `'channel'` The required Slack channel, default: nil
* `'webhook'` The Slack webhook, default: nil
* `'username'` Name message appears from in Slack, default: 'chef-client'
* `'message'`  The message text to send to Slack, default: nil
* `'icon_emoji'` The emoticon to use in Slack, default ':fork_and_knife:'

#### Example  

```ruby
slack_notify "Description" do
  channel 'test'
  username 'Chef'
  webhook 'https://slack.webhook.url'
  message "My mesage that appears in Slack"
end
```

#### `Hipchat`  

#### Attribute parameters  

* `'webhook'` The Hipchat webhook, default: nil
* `'message'`  The message text to send to Hipchat, default: nil

#### Example 

```ruby
hipchat_notify "Description" do
  webhook 'https://hipchat.webhook.url'
  message "My mesage that appears in Hipchat"
end
```

#### `Custom`  

#### Attribute parameters  

* `'webhook'` The custom endpoint to send message to, default: nil
* `'body'`  The payload to send to the endpoint, default: nil

#### Example 

```ruby
custom_notify "Description" do
  webhook 'https://custom.webhook.url'
  body "payload expected by endpoint"
end
```


Contributing
------------

1. Fork the repository on Github  
2. Create a named feature branch (like `add_chatops_client_x`)  
3. Write your change  
4. Write tests for your change (if applicable)  
5. Run the tests, ensuring they all pass  
6. Submit a Pull Request using Github  

License and Authors
-------------------
Authors: Nielsen Pierce 