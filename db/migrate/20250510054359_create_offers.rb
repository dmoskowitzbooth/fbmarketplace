class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.integer :item_id
      t.float :offer
      t.string :notes
      t.integer :submitter_id
      t.string :status

      t.timestamps
    end
  end
end
