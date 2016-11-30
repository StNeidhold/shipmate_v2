class CreateCollateralDuties < ActiveRecord::Migration
  def change
    create_table :collateral_duties do |t|
      t.string :collateral_duty_name

      t.timestamps

    end
  end
end
