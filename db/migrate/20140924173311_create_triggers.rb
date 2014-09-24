class CreateTriggers < ActiveRecord::Migration
  def change
    create_table :triggers do |t|
      t.text :body
      t.text :explanation
      t.integer :rule_id

      t.timestamps
    end
  end
end
