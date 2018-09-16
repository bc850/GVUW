class CreateBoardMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :board_members do |t|
      t.string :name
      t.string :business
      t.string :position
      t.integer :commencement_year
      t.integer :roll_off_year
      t.boolean :rolled_off

      t.timestamps
    end
  end
end
