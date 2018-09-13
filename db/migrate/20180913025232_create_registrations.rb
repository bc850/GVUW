class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.integer :event_id
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
