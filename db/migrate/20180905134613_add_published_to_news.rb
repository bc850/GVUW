class AddPublishedToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :published, :boolean, default: false
    add_column :news, :published_at, :datetime
  end
end
