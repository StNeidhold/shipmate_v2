class CreateEvals < ActiveRecord::Migration
  def change
    create_table :evals do |t|
      t.integer :sailor_id
      t.integer :eval_group_id
      t.float :trait_average
      t.integer :mark_ones
      t.integer :mark_twos
      t.integer :mark_threes
      t.integer :mark_fours
      t.integer :mark_fives
      t.string :promotion_recommendation

      t.timestamps

    end
  end
end
