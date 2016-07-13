require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  describe "attributes" do
    it { should have_db_column(:body).of_type(:text) }
    it { should have_db_column(:completed).of_type(:boolean).with_options(default: false, null: false) }
  end

  describe 'associations' do
    it { should belong_to(:todo_list) }
  end

  describe 'validations' do
    it { should validate_presence_of(:body) }
    it { should validate_length_of(:body).is_at_least(5) }
    it { should validate_presence_of(:completed) }
  end

  describe "scopes" do

  end
end
