require 'rails_helper'

RSpec.describe Facility, type: :model do
  describe 'associations' do
    it { should have_many(:appointments) }
    it { should have_many(:users).through(:appointments) }
  end

  describe 'validations for name' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_length_of(:name).is_at_least(2) }
    it { should validate_length_of(:name).is_at_most(30) }
    it {
      should validate_length_of(:name).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
    it {
      should validate_length_of(:name).is_at_most(30)
        .with_short_message('is too long (maximum is 30 characters)')
    }
  end

  describe 'validations for image_url' do
    it { should validate_presence_of(:image_url) }
    it { should validate_uniqueness_of(:image_url) }
    it { should validate_length_of(:image_url).is_at_least(2) }
    it {
      should validate_length_of(:image_url).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
  end

  describe 'validations for brief_description' do
    it { should validate_presence_of(:brief_description) }
    it { should validate_uniqueness_of(:brief_description) }
    it { should validate_length_of(:brief_description).is_at_least(2) }
    it {
      should validate_length_of(:brief_description).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
  end

  describe 'validations for detailed_description' do
    it { should validate_presence_of(:detailed_description) }
    it { should validate_uniqueness_of(:detailed_description) }
    it { should validate_length_of(:detailed_description).is_at_least(2) }
    it {
      should validate_length_of(:detailed_description).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
  end

  describe 'validations for free_trial' do
    it { should validate_presence_of(:free_trial) }
    it { should validate_length_of(:free_trial).is_at_least(2) }
    it { should validate_length_of(:free_trial).is_at_most(20) }
    it {
      should validate_length_of(:free_trial).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
    it {
      should validate_length_of(:free_trial).is_at_most(20)
        .with_short_message('is too long (maximum is 20 characters)')
    }
  end

  describe 'validations for three_months_package' do
    it { should validate_presence_of(:three_months_package) }
    it { should validate_length_of(:three_months_package).is_at_least(2) }
    it { should validate_length_of(:three_months_package).is_at_most(20) }
    it {
      should validate_length_of(:three_months_package).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
    it {
      should validate_length_of(:three_months_package).is_at_most(20)
        .with_short_message('is too long (maximum is 20 characters)')
    }
  end

  describe 'validations for six_months_package' do
    it { should validate_presence_of(:six_months_package) }
    it { should validate_length_of(:six_months_package).is_at_least(2) }
    it { should validate_length_of(:six_months_package).is_at_most(20) }
    it {
      should validate_length_of(:six_months_package).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
    it {
      should validate_length_of(:six_months_package).is_at_most(20)
        .with_short_message('is too long (maximum is 20 characters)')
    }
  end

  describe 'validations for annual_package' do
    it { should validate_presence_of(:annual_package) }
    it { should validate_length_of(:annual_package).is_at_least(2) }
    it { should validate_length_of(:annual_package).is_at_most(20) }
    it {
      should validate_length_of(:annual_package).is_at_least(2)
        .with_short_message('is too short (minimum is 2 characters)')
    }
    it {
      should validate_length_of(:annual_package).is_at_most(20)
        .with_short_message('is too long (maximum is 20 characters)')
    }
  end
end
