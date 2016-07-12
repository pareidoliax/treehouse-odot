require 'rails_helper'

describe "Creating todo lists" do
  def create_todo_list(options = {})
    options[:title] ||= 'My Grocery List'
    options[:description] ||= 'Groceries to buy this week.'
    
    visit "/todo_lists"
    click_link "New Todo list"
    expect(page).to have_content 'New Todo List'
    fill_in 'Title', with: options[:title]
    fill_in 'Description', with: options[:description]
    click_button 'Create Todo list'
  end
  
  it "redirect to the todo list page on success" do
    create_todo_list
    expect(page).to have_content 'Todo list was successfully created.'
    expect(page).to have_content 'Title: My Grocery List'
  end
  
  it "displays errors and form on failure" do
    create_todo_list(title: '', description: 'ab')
    expect(page).to have_content 'New Todo List'
    expect(page).to have_content 'prohibited this todo_list from being saved'
  end
end