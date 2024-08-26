class Player < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :position

  with_options presence: true do
    validates :player_name
    validates :player_kana
    validates :image
    validates :position_id
  end
end
