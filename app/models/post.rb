class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    # if you update the title, you want ot update the slug as well
    title_changed?
  end
end
