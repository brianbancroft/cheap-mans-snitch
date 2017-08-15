class CreateSchedulerTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :scheduler_tasks do |t|
      t.string :task
      t.string :interval
      t.string :environment
      t.datetime :last_checkin
      t.boolean :sent_warning

      t.timestamps
    end
  end
end
