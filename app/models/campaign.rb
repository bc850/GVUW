# == Schema Information
#
# Table name: campaigns
#
#  id               :bigint(8)        not null, primary key
#  year             :integer
#  total            :decimal(, )
#  percentage       :decimal(, )
#  body             :text
#  slug             :string
#  author_id        :bigint(8)
#  published        :boolean
#  published_at     :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  description      :text
#  campaign_goal    :decimal(, )
#

class Campaign < ApplicationRecord
  belongs_to :author

  acts_as_taggable # Alias for acts_as_taggable_on :tags

  extend FriendlyId
  friendly_id :year, use: :slugged

  PER_PAGE = 3

  scope :most_recent, -> { order(published_at: :desc) }
  scope :published, -> { where(published: true) }
  scope :recent_paginate, -> (page) { most_recent.paginate(page: page, per_page: PER_PAGE) }
  scope :with_tag, -> (tag) { tagged_with(tag) if tag.present? }

  scope :list_for, -> (page, tag) do
    recent_paginate(page).with_tag(tag)
  end

  scope :year_desc, -> { order(year: :desc) }

  def should_generate_new_friendly_id?
    # if you update the title, you want to update the slug as well
    year_changed?
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

  def campaign_math
    (total / campaign_goal) * 100
  end
end
