class ItemStatCategory < ApplicationRecord
  belongs_to :item_category
  belongs_to :item_stat
end
