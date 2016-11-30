class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :rank_name

      t.timestamps

    end
  end
end
