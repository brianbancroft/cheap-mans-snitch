class Checkins < ActiveRecord::Migration[5.1]
  def change
    create_table :checkin do |t|
      t.references :scheduler_tasks
      t.timestamps
    end
  end
end
