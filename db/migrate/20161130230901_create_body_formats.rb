class CreateBodyFormats < ActiveRecord::Migration
  def change
    create_table :body_formats do |t|
      t.string :description

      t.timestamps

    end
  end
end
