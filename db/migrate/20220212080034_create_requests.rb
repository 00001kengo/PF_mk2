class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :working_time_id
      t.datetime :overtime_start
      t.datetime :overtime_finish
      t.text :job_description

      t.timestamps
    end
  end
end
