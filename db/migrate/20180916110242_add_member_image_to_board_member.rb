class AddMemberImageToBoardMember < ActiveRecord::Migration[5.2]
  def change
    add_column :board_members, :member_image, :string
  end
end
