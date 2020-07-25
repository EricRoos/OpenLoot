class CreateItemStatCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :item_stat_categories do |t|
      t.references :item_category, null: false, foreign_key: true
      t.references :item_stat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
