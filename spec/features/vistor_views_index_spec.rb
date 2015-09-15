require 'rails_helper'

feature 'visitor views questions', %Q{
  As a visitor
  I want to view all the questions
} do

  scenario 'view index page' do
    visit "/"

    expect(page).to have_content("Questions!")
  end
end
