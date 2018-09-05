# == Schema Information
#
# Table name: news
#
#  id               :integer          not null, primary key
#  title            :string
#  body             :text
#  description      :string
#  slug             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  author_id        :integer
#  published        :boolean          default(FALSE)
#  published_at     :datetime
#

class News < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :most_recent, -> { order(published_at: :desc) }
  scope :published, -> { where(published: true) }

  belongs_to :author#, :optional => true

  def should_generate_new_friendly_id?
    # if you update the title, you want to update the slug as well
    title_changed?
  end

  def display_day_published
    "Published #{published_at.strftime('%-b %-d, %Y')}"
  end

  def publish
    update(published: true, published_at: Time.now)
  end

  def unpublish
    update(published: false, published_at: nil)
  end
end
