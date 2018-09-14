class AddFeaturedToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :featured, :boolean
  end
end
