class AddMixMaxToStatRange < ActiveRecord::Migration[6.0]
  def change
    add_column :stat_ranges, :min, :integer, default: 0
    add_column :stat_ranges, :max, :integer, default: 0
  end
end
