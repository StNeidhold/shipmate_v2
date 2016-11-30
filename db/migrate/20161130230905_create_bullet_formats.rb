class CreateBulletFormats < ActiveRecord::Migration
  def change
    create_table :bullet_formats do |t|
      t.string :description

      t.timestamps

    end
  end
end
