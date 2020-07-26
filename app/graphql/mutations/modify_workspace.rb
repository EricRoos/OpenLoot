module Mutations
  class ModifyWorkspace < BaseMutation
    # TODO: define return fields
    field :workspace, Types::WorkspaceType, null: false
    field :errors, [String], null: false


    # TODO: define arguments
    argument :workspace_id, Integer, required: true
    argument :item_stats, [Types::ItemStatAttributes], required: false
    
    # TODO: define resolve method
    def resolve(workspace_id:, item_stats:)
      workspace = Workspace.find(workspace_id)
      workspace.update({
        item_stats_attributes: item_stats.as_json
      })
      { workspace: workspace, errors: workspace.errors.full_messages  }
    end

  end
end
