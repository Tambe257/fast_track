class AddEssayToScores < ActiveRecord::Migration
  def change
    add_column :scores, :essay, :integer
  end
end
