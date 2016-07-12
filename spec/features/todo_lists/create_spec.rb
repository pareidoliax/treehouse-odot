require 'rails_helper'

describe "Creating todo lists" do
  it "redirect to the todo list page on success" do
    visit "/todo_lists"
    click_link "New Todo list"
    expect(page).to have_content 'New Todo List'
    fill_in 'Title', with: 'My Grocery List'
    fill_in 'Description', with: 'Groceries to buy this week.'
    click_button 'Create Todo list'
    expect(page).to have_content 'Todo list was successfully created.'
    expect(page).to have_content 'Title: My Grocery List'
  end
end