require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_most(40) }
    it { should validate_presence_of(:image) }
  end

  describe 'Associations' do
    it { should have_many(:categories) }
    it { should have_many(:votes) }
    it { should belong_to(:author) }
  end
end
