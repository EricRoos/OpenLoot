require 'rails_helper'

RSpec.describe "ModifyItemStatForWorkspace", type: :request do
  describe "[AddItemStatToWorkSpace] POST /graphql" do
    let(:workspace) { Workspace.create }
    let(:item_stat_name) { 'foo' }
    let(:item_stat) { ItemStat.create(workspace: workspace, name: item_stat_name) }
    let(:new_item_stat_name) { 'bar' }

    let(:gql) {
      <<-GQL
        mutation {
          modifyWorkspace(input: {
            workspaceId: #{workspace.id},
            itemStats: [
              {id: #{item_stat.id}, name: \"#{new_item_stat_name}\"},
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
    it { is_expected.to change{ ItemStat.find(item_stat.id).name }.from(item_stat_name).to(new_item_stat_name) }
  end
end
