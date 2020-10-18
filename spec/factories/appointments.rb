FactoryBot.define do
  factory :appointment do
    association(:user)
    association(:facility)
    date { '10/20/2020' }
    city { 'madrid' }
  end
end
