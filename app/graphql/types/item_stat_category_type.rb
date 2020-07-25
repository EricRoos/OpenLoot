module Types
  class ItemStatCategoryType < Types::BaseObject
    field :id, ID, null: false
    field :item_category_id, Integer, null: false
    field :item_stat_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :item_category, [Types::ItemCategoryType], null: true
    field :item_stat, [Types::ItemStatType], null: true
  end
end
