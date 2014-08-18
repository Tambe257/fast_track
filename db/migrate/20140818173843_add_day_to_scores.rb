class AddDayToScores < ActiveRecord::Migration
  def change
    add_column :scores, :day, :boolean
  end
end
