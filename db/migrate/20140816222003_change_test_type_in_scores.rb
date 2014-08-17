class ChangeTestTypeInScores < ActiveRecord::Migration
  def self.up
   change_column :scores, :test_type, 'boolean USING CAST(test_type AS boolean)'
  end

  def self.down
   change_column :scores, :test_type, :string
  end
end
