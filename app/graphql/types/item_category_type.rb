module Types
  class ItemCategoryType < Types::BaseObject
    field :name, String, null: true
    field :workspace, [Types::WorkspaceType], null: true
  end
end
