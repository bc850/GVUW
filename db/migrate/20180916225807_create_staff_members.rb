class CreateStaffMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_members do |t|
      t.string :name
      t.string :position
      t.string :member_image
      t.text :description

      t.timestamps
    end
  end
end
