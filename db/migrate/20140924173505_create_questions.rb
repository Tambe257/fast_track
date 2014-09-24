class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body
      t.text :answer
      t.integer :rule_id

      t.timestamps
    end
  end
end
