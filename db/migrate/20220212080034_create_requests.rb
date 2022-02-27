class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :working_time_id
      t.datetime :start_at
      t.datetime :finish_at
      t.datetime :over_at
      t.text :job_description
      t.integer :status, null: false, default: 0
      
    
      t.timestamps
    end
  end
end
