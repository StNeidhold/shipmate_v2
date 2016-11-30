class CreateEvalEvidences < ActiveRecord::Migration
  def change
    create_table :eval_evidences do |t|
      t.string :evidence_description

      t.timestamps

    end
  end
end
