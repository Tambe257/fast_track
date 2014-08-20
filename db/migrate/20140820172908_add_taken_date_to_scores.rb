class AddTakenDateToScores < ActiveRecord::Migration
  def change
    add_column :scores, :taken_date, :date
  end
end
