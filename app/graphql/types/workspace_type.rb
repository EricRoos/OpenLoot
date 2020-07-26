module Types
  class WorkspaceType < Types::BaseObject
    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :item_stats, [ Types::ItemStatType], null: false
  end
end
