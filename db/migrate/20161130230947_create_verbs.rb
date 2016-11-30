class CreateVerbs < ActiveRecord::Migration
  def change
    create_table :verbs do |t|
      t.string :verb_word

      t.timestamps

    end
  end
end
