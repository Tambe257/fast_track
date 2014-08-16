class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :scores, :type, :test_type
  end
end
