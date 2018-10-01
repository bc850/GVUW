# == Schema Information
#
# Table name: events
#
#  id               :bigint(8)        not null, primary key
#  title            :string
#  banner_image_url :string
#  description      :string
#  body             :text
#  slug             :string
#  author_id        :bigint(8)
#  published        :boolean
#  published_at     :datetime
#  featured         :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  registerable     :boolean
#  event_date       :date
#  start_time       :time
#  end_time         :time
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
