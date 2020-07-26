require 'rails_helper'

RSpec.describe Workspace, type: :model do
  describe 'accepts_nested_attributes_for' do
    let(:workspace) { Workspace.create }
    let(:update_payload) do
      {
        item_stats_attributes: item_stats,
        item_categories: item_categories
      }
    end
    let(:item_categories) {[]}
    let(:item_stats) {[]}

    before do
      workspace.update(update_payload)
      workspace.reload
    end

    context 'updating item_stats for a workspace' do
      subject { workspace.item_stats }
      context 'adding new ones' do
        let(:new_item_stat_name) {  'Intelligence' }
        let(:item_stats) do
          return [
            ItemStat.new(name: new_item_stat_name).as_json,
          ]
        end
        
        subject { super().where(name: new_item_stat_name) }
        it { is_expected.to exist }
      end
      context 'updating an existing one' do
        let(:original_name) { 'zIntelligence' }
        let(:new_name) { 'Intelligence' }
        let(:existing_item_stat) { ItemStat.create(workspace: workspace, name: original_name) }
        let(:item_stats) do
          existing_item_stat.name = new_name
          return [
            existing_item_stat.as_json
          ]
        end
        subject { super().where(name: new_name) }
        it { is_expected.to eq [existing_item_stat] }
      end

      context 'deleting an existing one' do
        let(:original_name) { 'zIntelligence' }
        let(:existing_item_stat) { ItemStat.create(workspace: workspace, name: original_name) }
        let(:item_stats) do
          return [
            existing_item_stat.as_json.merge({'_destroy': true})
          ]
        end
        subject { super().where(name: original_name) }
        it { is_expected.to_not exist }
      end
    end
  end
end
