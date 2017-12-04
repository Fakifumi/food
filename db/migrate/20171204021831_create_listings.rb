class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :special_dish
      t.string :qualification
      t.integer :cooking_history
      t.string :address
      t.string :listing_title
      t.text :listing_content
      t.integer :price_pernight
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
