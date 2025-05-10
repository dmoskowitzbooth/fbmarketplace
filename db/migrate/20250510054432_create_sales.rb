class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.integer :item_id
      t.integer :buyer_id
      t.integer :seller_id
      t.integer :accepted_offer_id
      t.string :status
      t.float :final_price
      t.string :pu_location
      t.datetime :pu_date

      t.timestamps
    end
  end
end
