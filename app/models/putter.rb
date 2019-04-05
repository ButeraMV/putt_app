class Putter < ApplicationRecord
  validates :name, presence: true
  has_many :enrollments
  has_many :contests, through: :enrollments
end
