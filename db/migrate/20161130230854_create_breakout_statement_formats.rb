class CreateBreakoutStatementFormats < ActiveRecord::Migration
  def change
    create_table :breakout_statement_formats do |t|
      t.string :description

      t.timestamps

    end
  end
end
