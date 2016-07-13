require 'rails_helper'

describe "Destroying todo lists" do
  
  let!(:todo_list) { TodoList.create(title: 'My Grocery List', description: 'Groceries to buy this week.') }

  def destroy_todo_list()
    
    visit "/todo_lists"
    within "#todo_list_#{todo_list.id}" do
      click_link "Destroy"
    end
  end
  
  it "redirect to the todo list index" do
    destroy_todo_list
    expect(page).to have_content 'Todo list was successfully destroyed.'
    expect(page).to have_content 'Listing Todo Lists'
    expect(TodoList.count).to be(0)
  end
  

end