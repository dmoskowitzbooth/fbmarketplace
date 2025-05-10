# == Schema Information
#
# Table name: items
#
#  id                :bigint           not null, primary key
#  address           :string
#  asking_price      :float
#  category          :string
#  description       :text
#  image             :string
#  msg_chains_count  :integer
#  name              :string
#  offers_count      :integer
#  og_purchase_price :float
#  reviews_count     :integer
#  sale_type         :string
#  status            :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  seller_id         :integer
#
class Item < ApplicationRecord
end
