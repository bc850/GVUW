class News < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :most_recent, -> { order(id: :desc) }

  belongs_to :author#, :optional => true

  def should_generate_new_friendly_id?
    # if you update the title, you want to update the slug as well
    title_changed?
  end

  def display_day_published
    "Published #{created_at.strftime('%-b %-d, %Y')}"
  end
end
