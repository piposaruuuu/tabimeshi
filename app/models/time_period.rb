class TimePeriod < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'モーニング' },
    { id: 3, name: 'ランチ' },
    { id: 4, name: 'ディナー' },
    { id: 5, name: '22時以降' }
  ]

  include ActiveHash::Associations
  has_many :posts
  
  end
