class AddEnglishToScores < ActiveRecord::Migration
  def change
    add_column :scores, :english, :integer
  end
end
