class AddChOrderToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :chOrder, :integer
  end
end
