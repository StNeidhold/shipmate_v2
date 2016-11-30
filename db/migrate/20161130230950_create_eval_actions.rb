class CreateEvalActions < ActiveRecord::Migration
  def change
    create_table :eval_actions do |t|
      t.string :action_description

      t.timestamps

    end
  end
end
