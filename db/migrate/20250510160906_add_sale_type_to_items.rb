class AddSaleTypeToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :sale_type, :string
  end
end
