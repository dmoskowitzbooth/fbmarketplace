class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :image
      t.integer :seller_id
      t.float :asking_price
      t.float :og_purchase_price
      t.string :address
      t.string :status
      t.integer :offers_count
      t.integer :msg_chains_count
      t.integer :reviews_count

      t.timestamps
    end
  end
end
