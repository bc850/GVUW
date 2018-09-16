# == Schema Information
#
# Table name: board_members
#
#  id                :bigint(8)        not null, primary key
#  name              :string
#  business          :string
#  position          :string
#  commencement_year :integer
#  roll_off_year     :integer
#  rolled_off        :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  member_image      :string
#

require 'test_helper'

class BoardMemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
