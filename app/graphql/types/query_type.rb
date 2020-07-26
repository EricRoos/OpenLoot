module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :items, [Types::ItemType], null: false do
      argument :workspace_id, ID, required: true, default_value: false
      argument :name, String, required: false, default_value: false
    end

    def items(workspace_id:, name:)
      w = Workspace.find(workspace_id).items
      w = w.where(name: name) if name.present?
      w
    end
  end
end
