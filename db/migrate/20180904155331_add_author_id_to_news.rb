class AddAuthorIdToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :author_id, :integer
    add_index :news, :author_id
  end
end
