class AddCampaignGoalToCampaign < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :campaign_goal, :decimal
  end
end
