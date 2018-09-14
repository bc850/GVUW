# == Schema Information
#
# Table name: news
#
#  id               :bigint(8)        not null, primary key
#  title            :string
#  body             :text
#  description      :string
#  slug             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  author_id        :bigint(8)
#  published        :boolean          default(FALSE)
#  published_at     :datetime
#  featured         :boolean
#

require 'test_helper'

class NewsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
