class CreateWorkingTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :working_times do |t|
      t.integer :worker_id
      t.datetime :start_at, default: "2015-01-01 00:00:00"
      t.datetime :finish_at, default: "2015-01-01 00:00:00"
      t.datetime :over_at
      t.datetime :open_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
