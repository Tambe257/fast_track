class AddMonthToScores < ActiveRecord::Migration
  def change
    add_column :scores, :month, :string
  end
end
