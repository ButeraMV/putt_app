require 'rails_helper'

RSpec.describe 'Contest Index', :type => :feature do
  before(:each) do
    visit '/'
  end

  scenario 'navigating to root path' do
    expect(page).to have_content('Putting Contest')
  end

  scenario 'link to new contest path' do
    click_link 'New Contest'
    expect(current_path).to eq(new_contest_path)
  end

  scenario 'a list of contests is displayed' do
    contest = create(:contest)
    expect(page).to have_content(contest.name)
  end
end