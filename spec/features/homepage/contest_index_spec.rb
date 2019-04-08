require 'rails_helper'

RSpec.describe 'Contest Index', :type => :feature do
  scenario 'navigating to root path' do
    visit '/'
    expect(page).to have_content('Putting Contest')
  end
end