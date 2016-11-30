class CreateAdverbs < ActiveRecord::Migration
  def change
    create_table :adverbs do |t|
      t.string :adverb_word

      t.timestamps

    end
  end
end
