class CreateAccents < ActiveRecord::Migration
  def change
    create_table :accents do |t|
      t.string :description
      t.string :text

      t.timestamps

    end
  end
end
