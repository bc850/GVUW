# == Schema Information
#
# Table name: registrations
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  phone      :string
#  email      :string
#  event_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Registration < ApplicationRecord
  belongs_to :event

  validates :name, :phone, :email, presence: true
end
