class CreateHeadingOpeningFormats < ActiveRecord::Migration
  def change
    create_table :heading_opening_formats do |t|
      t.string :description

      t.timestamps

    end
  end
end
