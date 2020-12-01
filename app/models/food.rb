class Food < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  belongs_to :category
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :example
    validates :category_id
    validates :price
    validates :user_id
  end
end
