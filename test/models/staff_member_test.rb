# == Schema Information
#
# Table name: staff_members
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  position     :string
#  member_image :string
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class StaffMemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
