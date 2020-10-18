require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations for username' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_length_of(:username).is_at_least(3) }
    it { should validate_length_of(:username).is_at_most(30) }
    it {
      should validate_length_of(:username).is_at_least(3)
        .with_short_message('is too short (minimum is 3 characters)')
    }
    it {
      should validate_length_of(:username).is_at_most(30)
        .with_short_message('is too long (maximum is 30 characters)')
    }
  end

  describe 'validations for email' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_length_of(:email).is_at_least(10) }
  end

  describe 'associations' do
    it { should have_many(:facilities).through(:appointments) }
    it { should have_many(:appointments) }
  end
end