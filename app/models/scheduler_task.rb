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
    DateTime.current <= last_checkin + (3 * extract_interval)
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
    binding.pry
  end
end
