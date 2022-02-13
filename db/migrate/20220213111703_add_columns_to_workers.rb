class AddColumnsToWorkers < ActiveRecord::Migration[5.2]
  def change
   add_column :workers, :sign_in_count, :integer, default: 0, null: false
   add_column :workers, :current_sign_in_at, :datetime
   add_column :workers, :last_sign_in_at, :datetime
   add_column :workers, :current_sign_in_ip, :string
   add_column :workers, :last_sign_in_ip, :string

   # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

  end
end
