# Slackvite
![travis-ci](https://travis-ci.org/rosendin/slackvite.svg?branch=master)

An ruby gem to send a Slack team invite. There isn't a Slack API to invite someone to a team, so I wrote this gem based from [here](https://github.com/outsideris/slack-invite-automation). Simply create an email form in your view, create an invite, and pass the email param to the sendTo method.

### Installation
```
gem install slackvite
```

### Usage
In your controller:
```
email = 'matt@roseware.io'
slackvite = Slackvite::Configuration.new('your_token', 'your_subdomain')
slackvite.sendTo(email)
```
