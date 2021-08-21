class Post < ApplicationRecord
  has_many  :comments
  belong_to :user
  has_one_attached :image
end
