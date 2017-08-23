class SchedulerTask < ApplicationRecord
  has_many :checkins
  # TODO: before_create: Ensure the below intervals are enforced

  ## Acceptable Intervals
  # '10-minute'
  # '3-minute'
  # '1-hour'
  # '17-hour'
  # '1-day'

  def on_schedule
    DateTime.current <= last_checkin + extract_interval
  end

  def extract_interval
    if (match = interval.match(/(.*)-minute/)).present?
      match[0].to_i.minutes
    elsif (match = interval.match(/(.*)-hour/)).present?
      match[0].to_i.hours
    elsif (match = interval.match(/(.*)-day/)).present?
      match[0].to_i.days
    end
  end

  def self.check_tasks
    find_each { |task| task.send_warning unless task.on_schedule }
  end

  def send_warning
    SlackNotification.send_warning("Bad news, bud: #{task} on #{environment} didn't check in after #{extract_interval}")
  end
end
