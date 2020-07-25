class Workspace < ApplicationRecord
  has_many :item_stats
  has_many :item_categories

  accepts_nested_attributes_for :item_stats, allow_destroy: true
  accepts_nested_attributes_for :item_categories, allow_destroy: true
end
