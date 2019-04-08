require 'rails_helper'

RSpec.feature 'Contest Index', :type => :feature do
  scenario 'navigating to root path' do
    visit '/'
    expect(page).to have_content('Putting Contest Tracker')
  end

  scenario 'link to new contest path' do
    visit '/'
    click_link 'New Contest'
    expect(current_path).to eq(new_contest_path)
  end

  scenario 'a list of contests is displayed' do
    contest = create(:contest)
    visit '/'
    expect(page).to have_content(contest.name)
  end
end