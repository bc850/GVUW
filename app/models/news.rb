# == Schema Information
#
# Table name: news
#
#  id               :bigint(8)        not null, primary key
#  title            :string
#  body             :text
#  description      :string
#  slug             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  author_id        :bigint(8)
#  published        :boolean          default(FALSE)
#  published_at     :datetime
#  featured         :boolean
#

class News < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags

  extend FriendlyId
  friendly_id :title, use: :slugged

  PER_PAGE = 3

  scope :most_recent, -> { order(published_at: :desc) }
  scope :published, -> { where(published: true) }
  scope :recent_paginate, -> (page) { most_recent.paginate(page: page, per_page: PER_PAGE) }
  scope :with_tag, -> (tag) { tagged_with(tag) if tag.present? }

  scope :list_for, -> (page, tag) do
    recent_paginate(page).with_tag(tag)
  end

  scope :featured, -> { where(featured: true) }

  belongs_to :author

  def should_generate_new_friendly_id?
    # if you update the title, you want to update the slug as well
    title_changed?
  end

  def display_day_published
    if published_at.present?
      "Published #{published_at.strftime('%-b %-d, %Y')}"
    else
      "Not published yet."
    end
  end

  def publish
    update(published: true, published_at: Time.now)
  end

  def unpublish
    update(published: false, published_at: nil)
  end
end
