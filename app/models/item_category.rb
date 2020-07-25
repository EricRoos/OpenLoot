class ItemCategory < ApplicationRecord
  has_many :item_stat_categories
  belongs_to :workspace
end
