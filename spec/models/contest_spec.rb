require 'rails_helper'

RSpec.describe Contest, type: :model do
  it { should validate_presence_of :name }
  it { should have_many :enrollments }
  it { should have_many :putters }
end
