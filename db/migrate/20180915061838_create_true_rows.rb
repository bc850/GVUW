class CreateTrueRows < ActiveRecord::Migration[5.2]
  def change
    create_table :true_rows do |t|
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
