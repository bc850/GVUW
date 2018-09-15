class AddBannerImageUrlToCampaign < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :banner_image_url, :string
  end
end
