class Tag < ApplicationRecord
  has_many :items, through: :item_tags
end
