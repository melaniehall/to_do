require './spec/spec_helper'

feature 'Create task' do
  scenario 'user adds a new task' do
    visit '/'
    click_link 'Add Task'
    fill_in 'Name', with: 'Fix Grill'
    fill_in 'Notes', with: 'needs new propane tank'
    click_button 'Add Task'
    expect(page).to have_content("Your task has been added")
    visit '/tasks'
    expect(page).to have_content("Fix Grill")
  end
end