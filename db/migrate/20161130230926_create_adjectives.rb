class CreateAdjectives < ActiveRecord::Migration
  def change
    create_table :adjectives do |t|
      t.string :adjective_word

      t.timestamps

    end
  end
end
