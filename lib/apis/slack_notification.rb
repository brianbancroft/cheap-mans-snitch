require 'slack-notifier'

module SlackNotification
  def self.hello_world
    notifier = Slack::Notifier.new ENV['SLACK_API_WEBHOOK']
    notifier.ping 'This is an initial test for Brian\'s cheap-man\'s snitch app'
  end
end
