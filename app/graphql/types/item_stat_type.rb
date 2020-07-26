module Types
  class ItemStatType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :workspace_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :name, String, null: true
    #field :workspace, [Types::WorkspaceType], null: false
  end
end
