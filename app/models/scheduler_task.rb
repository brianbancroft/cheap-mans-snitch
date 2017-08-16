class SchedulerTask < ApplicationRecord
  has_many :checkins
  # TODO: before_create: Ensure the below intervals are enforced

  ## Acceptable Intervals
  # '10-minute'
  # '3-minute'
  # '1-hour'
  # '17-hour'
  # '1-day'

  def self.extract_interval(interval_string)
    if (match = interval_string.match(/(.*)-minute/)).present?
      match[0].to_i.minutes
    elsif (match = interval_string.match(/(.*)-hour/)).present?
      match[0].to_i.hours
    elsif (match = interval_string.match(/(.*)-day/)).present?
      match[0].to_i.days
    end
  end
end
