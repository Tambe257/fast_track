class AddCurrentStudentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_student, :boolean, :default => true
  end
end
