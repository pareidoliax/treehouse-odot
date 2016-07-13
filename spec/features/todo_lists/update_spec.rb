require 'rails_helper'

describe "Updating todo lists" do
  def update_todo_list(options = {})
    options[:title] ||= 'My Grocery List'
    options[:description] ||= 'Groceries to buy this week.'
    todo_list = TodoList.create(title: 'My Grocery List', description: 'Groceries to buy this week.')
    
    visit "/todo_lists"
    within "#todo_list_#{todo_list.id}" do
      click_link "Edit"
    end
    expect(page).to have_content 'Editing Todo List'
    fill_in 'Title', with: options[:title]
    fill_in 'Description', with: options[:description]
    click_button 'Update Todo list'
  end
  
  it "redirect to the todo list page on success" do
    update_todo_list
    expect(page).to have_content 'Todo list was successfully updated.'
    expect(page).to have_content 'Title: My Grocery List'
  end
  
  it "displays errors and form on failure" do
    update_todo_list(title: '', description: 'ab')
    expect(page).to have_content 'Editing Todo List'
    expect(page).to have_content 'prohibited this todo_list from being saved'
  end
end