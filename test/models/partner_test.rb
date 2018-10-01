# == Schema Information
#
# Table name: partners
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  logo         :string
#  description  :text
#  body         :text
#  slug         :string
#  published    :boolean
#  published_at :datetime
#  author_id    :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PartnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
