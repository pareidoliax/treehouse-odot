
require 'rails_helper'

RSpec.describe TodoList, type: :model do

  describe "attributes" do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:description).of_type(:text) }
  end

  describe 'associations' do

  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(3) }
  end

  describe "scopes" do

  end

end
