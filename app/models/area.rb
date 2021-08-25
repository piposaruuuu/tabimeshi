class Area < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アジア' },
    { id: 3, name: '中国' },
    { id: 4, name: 'ヨーロッパ' },
    { id: 5, name: 'オセアニア' },
    { id: 6, name: '北米・中米' },
    { id: 7, name: 'ハワイ' },
    { id: 8, name: '南米' },
    { id: 9, name: '中東' },
    { id: 10, name: 'アフリカ' }
  ]
  include ActiveHash::Associations
  has_many :posts
end
