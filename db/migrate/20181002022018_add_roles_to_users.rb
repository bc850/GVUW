class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :superadmin_role, :boolean, default: false
    add_column :users, :admin_role, :boolean, default: false
    add_column :users, :author_role, :boolean, default: false
    add_column :users, :board_member_role, :boolean, default: false
    add_column :users, :user_role, :boolean, default: true
  end
end
