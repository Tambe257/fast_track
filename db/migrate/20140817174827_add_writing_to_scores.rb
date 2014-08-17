class AddWritingToScores < ActiveRecord::Migration
  def change
    add_column :scores, :writing, :integer
  end
end
