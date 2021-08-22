class PersonNumber < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ひとり旅行' },
    { id: 3, name: '少人数旅行' },
    { id: 4, name: '家族旅行' },
    { id: 5, name: '団体旅行' },
    { id: 6, name: 'ハネムーン' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
