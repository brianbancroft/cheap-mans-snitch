require 'slack-notifier'

module SlackNotification
  def self.send_warning(message)
    Slack::Notifier.new(ENV['SLACK_API_WEBHOOK']).ping(message)
  end
end
