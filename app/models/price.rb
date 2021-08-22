class Price < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '~¥999' },
    { id: 3, name: '¥1,000~¥1,999' },
    { id: 4, name: '¥2,000~¥2,999' },
    { id: 5, name: '¥3,000~¥3,999' },
    { id: 6, name: '¥4,000~¥4,999' },
    { id: 7, name: '¥5,000~¥5,999' },
    { id: 8, name: '¥6,000~¥7,999' },
    { id: 9, name: '¥8,000~¥9,999' },
    { id: 10, name: '¥10,000~¥14,999' },
    { id: 11, name: '¥15,000~¥19,999' },
    { id: 12, name: '¥20,000~¥29,999' },
    { id: 13, name: '¥30,000~¥39,999' },
    { id: 14, name: '¥40,000~¥49,999' },
    { id: 15, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
  
  end