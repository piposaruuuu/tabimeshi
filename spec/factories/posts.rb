FactoryBot.define do
  factory :post do
    restaurant_name    { Faker::Lorem.sentence }
    text               { Faker::Lorem.sentence }
    country            { Faker::Lorem.sentence }
    meal_name          { Faker::Lorem.sentence }
    image              { Faker::Lorem.sentence }
    genre_id           { 2 }
    person_number_id   { 2 }
    price_id           { 2 }
    time_period_id     { 2 }
    association :user

    after(:build) do |post|
      post.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
