# == Schema Information
#
# Table name: campaigns
#
#  id               :bigint(8)        not null, primary key
#  year             :integer
#  total            :decimal(, )
#  percentage       :decimal(, )
#  body             :text
#  slug             :string
#  author_id        :bigint(8)
#  published        :boolean
#  published_at     :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  description      :text
#  campaign_goal    :decimal(, )
#

require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
