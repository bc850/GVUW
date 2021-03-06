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

class Partner < ApplicationRecord
  belongs_to :author

  acts_as_taggable # Alias for acts_as_taggable_on :tags

  extend FriendlyId
  friendly_id :name, use: :slugged

  PER_PAGE = 3

  scope :alphabetical, -> { order(name: :asc) }
  scope :published, -> { where(published: true) }
  scope :recent_paginate, -> (page) { alphabetical.paginate(page: page, per_page: PER_PAGE) }
  scope :with_tag, -> (tag) { tagged_with(tag) if tag.present? }

  scope :list_for, -> (page, tag) do
    recent_paginate(page).with_tag(tag)
  end

  def should_generate_new_friendly_id?
    # if you update the title, you want to update the slug as well
    name_changed?
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
