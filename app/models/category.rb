class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '食堂，レストラン（専門料理店を除く）' },
    { id: 3, name: '専門料理店' },
    { id: 4, name: '日本料理店' },
    { id: 5, name: '料亭' },
    { id: 6, name: '中華料理店' },
    { id: 7, name: 'ラーメン店' },
    { id: 8, name: '焼肉店' },
    { id: 9, name: 'そば・うどん店' },
    { id: 10, name: 'すし店' },
    { id: 11, name: '酒場、ビヤホール' },
    { id: 12, name: 'バー、キャバレー、ナイトクラブ' },
    { id: 13, name: '居酒屋' },
    { id: 14, name: '喫茶店' },
    { id: 15, name: 'ハンバーガー店' },
    { id: 16, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :foods
end
