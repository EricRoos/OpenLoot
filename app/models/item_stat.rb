class ItemStat < ApplicationRecord
  belongs_to :workspace
  has_many :item_stat_categories
end
