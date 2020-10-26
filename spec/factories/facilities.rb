# spec/factories/todos.rb
FactoryBot.define do
  factory :facility do
    name { Faker::Name.unique.first_name }
    sequence(:image_url) { |i| "someURL#{i}" }
    sequence(:brief_description) { |i| "sometext#{i}" }
    sequence(:detailed_description) { |i| "sometext#{i}" }
    free_trial { 'free trail' }
    three_months_package { '100$' }
    six_months_package { '150$' }
    annual_package { '250$' }
  end
end
