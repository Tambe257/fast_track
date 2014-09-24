class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.text :body
      t.text :explanation
      t.integer :rule_id

      t.timestamps
    end
  end
end
