class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.string :subject
      t.integer :session_id
      t.integer :hint_id
      t.integer :question_id
      t.integer :trigger_id

      t.timestamps
    end
  end
end
