namespace :scheduler do
  desc 'Scheduled tasks for use in Heroku Scheduler'

  task check_on_tasks: :environment do
    puts 'verifying all tasks are carried out'
    SchedulerTask.check_tasks
  end

  task hello_world: :environment do
    SlackNotification.hello_world
  end
end
