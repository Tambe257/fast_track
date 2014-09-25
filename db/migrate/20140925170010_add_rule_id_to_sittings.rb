class AddRuleIdToSittings < ActiveRecord::Migration
  def change
    add_column :sittings, :rule_id, :integer
  end
end
