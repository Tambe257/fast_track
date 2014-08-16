class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
