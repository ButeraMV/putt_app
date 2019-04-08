require 'rails_helper'

RSpec.feature 'Creating a new contest', :type => :feature do
  scenario 'Creating a contest' do
    visit '/'
    click_link 'New Contest'
    fill_in 'Name', with: 'New Contest'
    click_button 'Create'
    expect(page).to have_content 'New Contest'
  end
end