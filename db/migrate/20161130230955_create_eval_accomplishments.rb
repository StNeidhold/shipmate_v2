class CreateEvalAccomplishments < ActiveRecord::Migration
  def change
    create_table :eval_accomplishments do |t|
      t.string :accomplishment_description

      t.timestamps

    end
  end
end
