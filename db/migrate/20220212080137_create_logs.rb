class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :worker_id
      t.datetime :log_in
      t.datetime :log_out

      t.timestamps
    end
  end
end
