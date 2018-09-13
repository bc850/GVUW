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
#

class Event < ApplicationRecord
  has_many :registrations
  belongs_to :author

  acts_as_taggable # Alias for acts_as_taggable_on :tags

  extend FriendlyId
  friendly_id :title, use: :slugged


end
