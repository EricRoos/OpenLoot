module Types
  class ItemStatType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true
    field :workspace_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :name, String, null: true
    field :errors, [String], null: false
    def errors
      object.errors.full_messages
    end
  end
end
