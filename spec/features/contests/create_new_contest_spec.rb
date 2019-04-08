require 'rails_helper'

RSpec.feature 'Creating a new contest', :type => :feature do
  context 'Creating a contest' do
    scenario 'with a name' do
      visit '/'
      click_link 'New Contest'
      fill_in 'Name', with: 'New Contest'
      click_button 'Create'
      expect(page).to have_content 'New Contest'
    end

    scenario 'without a name' do
      visit '/'
      click_link 'New Contest'
      click_button 'Create'
      expect(page).to have_content("can't be blank")
    end
  end
end