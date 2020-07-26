class Item < ApplicationRecord
  belongs_to :workspace
  has_many :stat_ranges
end
