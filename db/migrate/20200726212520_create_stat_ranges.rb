class CreateStatRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :stat_ranges do |t|
      t.references :item, null: false, foreign_key: true
      t.references :item_stat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
