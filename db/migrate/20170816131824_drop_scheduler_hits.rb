class DropSchedulerHits < ActiveRecord::Migration[5.1]
  def change
    drop_table :scheduler_hits do |t|
      t.string :task
      t.string :interval
      t.string :environment

      t.timestamps
    end
  end
end
