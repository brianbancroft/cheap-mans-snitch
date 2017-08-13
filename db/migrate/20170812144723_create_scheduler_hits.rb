class CreateSchedulerHits < ActiveRecord::Migration[5.1]
  def change
    create_table :scheduler_hits do |t|
      t.string :task
      t.string :interval
      t.string :environment

      t.timestamps
    end
  end
end
