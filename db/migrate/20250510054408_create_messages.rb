class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :chain_id
      t.string :msg_text
      t.string :status

      t.timestamps
    end
  end
end
