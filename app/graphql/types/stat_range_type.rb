module Types
  class StatRangeType < Types::BaseObject
    field :id, ID, null: false
    field :min, Integer, null: false
    field :max, Integer, null: false
    field :item_stat, Types::ItemStatType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
