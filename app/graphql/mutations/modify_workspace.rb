module Mutations
  class ModifyWorkspace < BaseMutation
    # TODO: define return fields
    field :workspace, Types::WorkspaceType, null: false


    # TODO: define arguments
    argument :workspace_id, Integer, required: true
    argument :item_stats, [Types::ItemStatAttributes], required: false
    
    # TODO: define resolve method
    def resolve(workspace_id:, item_stats:)
      workspace = Workspace.find(workspace_id)
      workspace.update_attributes({
        item_stats_attributes: item_stats.as_json
      })
      { workspace: workspace }
    end

  end
end
