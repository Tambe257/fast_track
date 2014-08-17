class ChangeTestTypeInScores < ActiveRecord::Migration
  def self.up
   change_column :scores, :test_type, :boolean
  end

  def self.down
   change_column :scores, :test_type, :string
  end
end
