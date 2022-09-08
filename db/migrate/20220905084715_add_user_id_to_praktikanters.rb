class AddUserIdToPraktikanters < ActiveRecord::Migration[7.0]
  def change
    add_column :praktikanters, :user_id, :integer
    add_index :praktikanters, :user_id
  end
end
