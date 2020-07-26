class ItemStat < ApplicationRecord
  belongs_to :workspace
  has_many :item_stat_categories

  validates_uniqueness_of :name, scope: :workspace_id
end
