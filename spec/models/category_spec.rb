require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Associations' do
    it { should have_many(:articles) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:priority) }
  end
end
