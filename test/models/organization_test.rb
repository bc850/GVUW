# == Schema Information
#
# Table name: organizations
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  address       :string
#  city          :string
#  state         :string
#  zip           :string
#  phone         :string
#  email         :string
#  latitude      :float
#  longitude     :float
#  map_api       :string
#  logo          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  mailchimp_api :string
#  mandrill_api  :string
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
