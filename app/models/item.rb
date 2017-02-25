class Item < ApplicationRecord
  belongs_to :list
  has_many :item_tags, dependent: :destroy
  has_many :tags, through: :item_tags

  accepts_nested_attributes_for :item_tags, allow_destroy: true
end
