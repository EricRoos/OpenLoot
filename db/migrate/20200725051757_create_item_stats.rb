class CreateItemStats < ActiveRecord::Migration[6.0]
  def change
    create_table :item_stats do |t|
      t.string :name
      t.references :workspace, null: false, foreign_key: true

      t.timestamps
    end
  end
end
