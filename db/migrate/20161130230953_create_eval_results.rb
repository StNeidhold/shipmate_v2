class CreateEvalResults < ActiveRecord::Migration
  def change
    create_table :eval_results do |t|
      t.string :results_description

      t.timestamps

    end
  end
end
