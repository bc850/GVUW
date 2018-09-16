class Staff < ApplicationRecord
  scope :alphabetical, -> { order(name: :asc) }
end
