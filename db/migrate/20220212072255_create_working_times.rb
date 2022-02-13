class CreateWorkingTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :working_times do |t|
      t.integer :worker_id
      t.datetime :start_at
      t.datetime :finish_at
      t.datetime :over_at
      t.datetime :open_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
