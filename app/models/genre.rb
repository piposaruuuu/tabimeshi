class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '和食' },
    { id: 3, name: '寿司' },
    { id: 4, name: 'ステーキ・ハンバーグ' },
    { id: 5, name: 'パスタ' },
    { id: 6, name: 'ピザ' },
    { id: 7, name: 'ハンバーガー' },
    { id: 8, name: 'フレンチ' },
    { id: 9, name: 'イタリアン' },
    { id: 10, name: '中華料理' },
    { id: 11, name: 'アジア・エスニック' },
    { id: 12, name: 'カレー' },
    { id: 13, name: '鍋' },
    { id: 14, name: '居酒屋・ダイニングバー' },
    { id: 15, name: 'ラーメン' },
    { id: 16, name: 'パン・サンドイッチ' },
    { id: 17, name: 'カフェ・スイーツ' },
    { id: 18, name: 'ビュッフェ・バイキング' },
    { id: 19, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
