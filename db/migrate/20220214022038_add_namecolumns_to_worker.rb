class AddNamecolumnsToWorker < ActiveRecord::Migration[5.2]
  def change
    add_column :workers, :first_name, :string
   add_column :workers, :last_name, :string
  end
end
