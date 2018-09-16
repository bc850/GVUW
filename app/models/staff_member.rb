class StaffMember < ApplicationRecord
  scope :alphabetical, -> { order(name: :asc) }
end
