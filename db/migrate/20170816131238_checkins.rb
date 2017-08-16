class Checkins < ActiveRecord::Migration[5.1]
  def change
    create_table :checkins do |t|
      t.references :scheduler_task
      t.timestamps
    end
  end
end
