
require 'rails_helper'

RSpec.describe TodoList, type: :model do

  describe "attributes" do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:description).of_type(:text) }
  end

  describe 'associations' do

  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
  end

  describe "scopes" do

  end

end
