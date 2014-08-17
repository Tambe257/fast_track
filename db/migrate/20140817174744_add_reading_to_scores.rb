class AddReadingToScores < ActiveRecord::Migration
  def change
    add_column :scores, :reading, :integer
  end
end
