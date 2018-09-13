class Event < ApplicationRecord
  has_many :registrations

  acts_as_taggable # Alias for acts_as_taggable_on :tags

  extend FriendlyId
  friendly_id :title, use: :slugged

  
end
