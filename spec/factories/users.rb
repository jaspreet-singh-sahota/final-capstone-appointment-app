FactoryBot.define do
  factory :user do
    username { Faker::Name.unique.first_name }
    password { '12345' }
    sequence(:email) { |i| "example#{i}@gmail.com" }
  end
end