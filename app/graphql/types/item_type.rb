module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :workspace_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :stat_ranges, [Types::StatRangeType], null: false
  end
end
