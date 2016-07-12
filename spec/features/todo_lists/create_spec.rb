require 'spec_helper'

describe "Creating todo lists" do
  it "redirect to the todo list page on success" do
    visit "/todo_lists"
    click_link "New Todo list"
    expect_page.to have_content("New Todo List")
  end
end