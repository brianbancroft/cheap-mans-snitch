namespace :scheduler do
  desc 'Scheduled tasks for use in Heroku Scheduler'

  task check_on_tasks: :environment do
    puts 'verifying all tasks are carried out'
    SchedulerHit.check_intervals
  end
end
