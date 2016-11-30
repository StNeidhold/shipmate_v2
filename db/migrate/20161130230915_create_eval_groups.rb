class CreateEvalGroups < ActiveRecord::Migration
  def change
    create_table :eval_groups do |t|
      t.string :group_name
      t.string :group_description
      t.string :group_rank
      t.integer :user_id

      t.timestamps

    end
  end
end
