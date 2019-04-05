class Contest < ApplicationRecord
  validates :name, presence: true
  has_many :enrollments
  has_many :putters, through: :enrollments
end
