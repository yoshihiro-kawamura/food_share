class Food < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  belongs_to :prefecture
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :example
    validates :category_id
    validates :prefecture_id
    validates :price
    validates :image
    validates :user_id
  end
end
