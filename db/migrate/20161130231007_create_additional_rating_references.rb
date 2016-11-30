class CreateAdditionalRatingReferences < ActiveRecord::Migration
  def change
    create_table :additional_rating_references do |t|
      t.integer :rating_id
      t.string :rating_reference_text

      t.timestamps

    end
  end
end
