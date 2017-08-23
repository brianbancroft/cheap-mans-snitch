namespace :scheduler do
  desc 'Scheduled tasks for use in Heroku Scheduler'

  task check_tasks: :environment do
    puts 'verifying all tasks are carried out'
    SchedulerTask.check_tasks
    puts 'tasks verified'
  end
end
