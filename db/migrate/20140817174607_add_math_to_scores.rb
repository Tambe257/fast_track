class AddMathToScores < ActiveRecord::Migration
  def change
    add_column :scores, :math, :integer
  end
end
