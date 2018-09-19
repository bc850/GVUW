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
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Partner < ApplicationRecord
end
