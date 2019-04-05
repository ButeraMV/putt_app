class Enrollment < ApplicationRecord
  belongs_to :putter
  belongs_to :contest
end
