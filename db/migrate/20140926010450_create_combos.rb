class CreateCombos < ActiveRecord::Migration
  def change
    create_table :combos do |t|
      t.integer :sitting_id
      t.integer :rule_id

      t.timestamps
    end
  end
end
