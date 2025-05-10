# == Schema Information
#
# Table name: sales
#
#  id                :bigint           not null, primary key
#  final_price       :float
#  pu_date           :datetime
#  pu_location       :string
#  status            :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  accepted_offer_id :integer
#  buyer_id          :integer
#  item_id           :integer
#  seller_id         :integer
#
class Sale < ApplicationRecord
end
