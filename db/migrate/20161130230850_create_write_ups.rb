class CreateWriteUps < ActiveRecord::Migration
  def change
    create_table :write_ups do |t|
      t.string :breakout_statement_text
      t.string :heading_opening1
      t.string :heading_opening2
      t.integer :breakout_statement_format_id
      t.string :heading_opening
      t.integer :heading_opening_format_id
      t.string :heading_second_opening
      t.integer :body_format_id
      t.string :bullet_one
      t.string :bullet_two
      t.integer :bullet_format_id
      t.string :bullet_three
      t.string :bullet_4
      t.string :closing
      t.integer :eval_id

      t.timestamps

    end
  end
end
