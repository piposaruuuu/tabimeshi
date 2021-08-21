class Post < ApplicationRecord
  has_many  :comments
  belong_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :person_number
  belongs_to :price
  belongs_to :time_period
end
