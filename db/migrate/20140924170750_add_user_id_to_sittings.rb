class AddUserIdToSittings < ActiveRecord::Migration
  def change
    add_column :sittings, :user_id, :integer
    add_index :sittings, :user_id
  end
end
