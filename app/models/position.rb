class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ピッチャー' },
    { id: 3, name: 'キャッチャー' },
    { id: 4, name: 'ファースト' },
    { id: 5, name: 'セカンド' },
    { id: 6, name: 'サード' },
    { id: 7, name: 'ショート' },
    { id: 8, name: 'レフト' },
    { id: 9, name: 'センター' },
    { id: 10, name: 'ライト' },
    { id: 11, name: 'マネージャー' },
    { id: 12, name: '日雇い助っ人' },
    { id: 13, name: 'ベンチ' },
    { id: 14, name: '応援団長' },
    { id: 15, name: '監督' },
    { id: 16, name: '投手コーチ' },
    { id: 17, name: '打撃コーチ' },
    { id: 18, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :players
end
