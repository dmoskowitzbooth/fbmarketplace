class CreateMsgChains < ActiveRecord::Migration[7.1]
  def change
    create_table :msg_chains do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :subject
      t.integer :item_id
      t.integer :messages_count

      t.timestamps
    end
  end
end
