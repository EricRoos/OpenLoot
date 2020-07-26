require 'rails_helper'

RSpec.describe "ModifyItemStatForWorkspace", type: :request do
  describe "[AddItemStatToWorkSpace] POST /graphql" do
    let(:workspace) { Workspace.create }
    let(:item_stat_name) { 'foo' }
    let(:item_stat) { ItemStat.create(workspace: workspace, name: item_stat_name) }

    let(:gql) {
      <<-GQL
        mutation {
          modifyWorkspace(input: {
            workspaceId: #{workspace.id},
            itemStats: [
              {id: #{item_stat.id}, _destroy: \"1"\}
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
    it { is_expected.to change{ ItemStat.where(id: item_stat.id).exists? }.from(true).to(false) }
  end
end
