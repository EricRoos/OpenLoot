require 'rails_helper'

RSpec.describe "AddItemStatToWorkSpace", type: :request do
  describe "[AddItemStatToWorkSpace] POST /graphql" do
    let(:workspace) { Workspace.create }
    let(:gql) {
      <<-GQL
        mutation {
          modifyWorkspace(input: {
            workspaceId: #{workspace.id},
            itemStats: [
              {name: \"Strength\"},
              {name: \"Might\"},
              {name: \"Magic\"}
            ]
          }){
            workspace {
              id
            }
          }
        }
      GQL
    }
    subject { -> { post "/graphql", params: { query: gql } } }
    it { is_expected.to change{ workspace.item_stats.count }.from(0).to(3) }
  end
end
