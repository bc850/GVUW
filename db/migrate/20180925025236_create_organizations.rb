class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.float :latitude
      t.float :longitude
      t.string :map_api
      t.string :logo

      t.timestamps
    end
  end
end
