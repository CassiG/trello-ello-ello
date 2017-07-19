FactoryGirl.define do
  factory :user do
    username Faker::HarryPotter.character
    email Faker::Internet.safe_email
    password 'password123'
  end
end
