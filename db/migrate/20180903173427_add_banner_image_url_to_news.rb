class AddBannerImageUrlToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :banner_image_url, :string
  end
end
