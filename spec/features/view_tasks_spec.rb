require 'spec_helper'

feature 'View tasks' do
  Task.create!(name: "Go to Grocery Store", notes: "need: milk, bagels, lunch meat")
  Task.create!(name: "Read Pragmatic Programmer", notes: "chapters 5-7")

  scenario 'user views a list of all tasks' do
    visit '/tasks'
    expect(page).to have_content('Go to Grocery Store')
    expect(page).to have_content('Read Pragmatic Programmer')
  end
end