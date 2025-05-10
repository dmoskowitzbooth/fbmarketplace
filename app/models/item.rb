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
#  latitude          :float
#  longitude         :float
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
  geocoded_by :full_address
  after_validation :geocode, if: ->(obj){ obj.full_address.present? && obj.will_save_change_to_address_street? }

  def full_address
    [address_street, address_city, address_state, address_zip, address_country].compact.join(', ')
  end
end
