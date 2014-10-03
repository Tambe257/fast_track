class AddChapterIdToRules < ActiveRecord::Migration
  def change
    add_column :rules, :chapter_id, :integer
  end
end
