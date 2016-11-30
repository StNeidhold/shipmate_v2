class CreateSailors < ActiveRecord::Migration
  def change
    create_table :sailors do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :division
      t.string :command
      t.string :rank
      t.string :rating
      t.string :position
      t.string :collateral_duty_1
      t.string :collateral_duty_2
      t.string :collateral_duty_3
      t.string :primary_responsibility

      t.timestamps

    end
  end
end
