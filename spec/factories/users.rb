FactoryBot.define do
  factory :user do
    nickname              { 'tarou' }
    email                 { Faker::Internet.free_email }
    password              { '12345a' }
    password_confirmation { password }
  end
end
