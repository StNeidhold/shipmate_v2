class CreateAdditionalRankReferences < ActiveRecord::Migration
  def change
    create_table :additional_rank_references do |t|
      t.integer :rank_id
      t.string :rank_reference_text

      t.timestamps

    end
  end
end
