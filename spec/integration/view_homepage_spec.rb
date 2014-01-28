require 'spec_helper'

feature 'view the homepage' do
  scenario 'user sees relevant information' do
    visit root_path
    expect(page).to have_css 'title', text: 'groupfood'
  end
end
