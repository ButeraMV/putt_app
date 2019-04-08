require 'rails_helper'

RSpec.describe Contest, type: :model do
  it { should validate_presence_of :name }
  it { should have_many :enrollments }
  it { should have_many :putters }

  context 'Scope' do
    it 'default_scope orders by descending created_at' do
      first_contest = create(:contest)
      second_contest = create(:contest)
      expect(Contest.all).to eq([second_contest, first_contest])
    end
  end
end
