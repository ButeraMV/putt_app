require 'rails_helper'

RSpec.feature 'Creating a new putter', :type => :feature do
  before(:each) do
    visit '/'
    click_link 'Add a Putter'
  end

  scenario 'created with a name' do
    fill_in 'putter[name]', with: 'Putter'
    click_button 'Create'
    expect(current_path).to eq(root_path)
  end

  scenario 'created without a name' do
    click_button 'Create'
    expect(page).to have_content("can't be blank")
  end

  scenario 'can be created with enrollments' do
    contest = create(:contest)
    fill_in 'putter[name]', with: 'Bob'
    check "#{contest.name}"
    click_button 'Create'
    visit contest_path(contest)
    expect(page).to have_content('Bob')
  end
end