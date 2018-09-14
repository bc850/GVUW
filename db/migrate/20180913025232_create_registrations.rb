class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.references :event, index: true, foreign_key: true

      t.timestamps
    end
  end
end
