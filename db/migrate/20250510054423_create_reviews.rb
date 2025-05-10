class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :author_id
      t.integer :user_about_id
      t.string :text
      t.string :would_to_again
      t.integer :item_id

      t.timestamps
    end
  end
end
