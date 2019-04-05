class Enrollment < ApplicationRecord
  belongs_to :putter
  belongs_to :contest
  validates :active, presence: true
end
