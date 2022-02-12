class CreateWorkingTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :working_times do |t|
      t.integer :worker_id
      t.datetime :start_time
      t.datetime :finish_time
      t.datetime :over_time
      t.datetime :open_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
