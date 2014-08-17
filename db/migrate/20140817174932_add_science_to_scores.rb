class AddScienceToScores < ActiveRecord::Migration
  def change
    add_column :scores, :science, :integer
  end
end
