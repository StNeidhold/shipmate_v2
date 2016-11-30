class AddEvalGroupCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :eval_groups_count, :integer
  end
end
