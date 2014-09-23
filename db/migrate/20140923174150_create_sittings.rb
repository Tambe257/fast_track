class CreateSittings < ActiveRecord::Migration
  def change
    create_table :sittings do |t|
      t.text :comment
      t.date :date

      t.timestamps
    end
  end
end
