class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :person_number
  belongs_to :price
  belongs_to :time_period

  with_options presence: true do
    validates :restaurant_name, :meal_name, :text, :country, :image
    validates :genre_id, :person_number_id, :price_id, :time_period_id,
              numericality: { other_than: 1, message: "can't be blank" }
  end
end
