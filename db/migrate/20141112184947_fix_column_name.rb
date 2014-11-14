class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :chapters, :chOrder, :ch_order
  end
end
