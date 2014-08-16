class AddYearToScores < ActiveRecord::Migration
  def change
    add_column :scores, :year, :string
  end
end
