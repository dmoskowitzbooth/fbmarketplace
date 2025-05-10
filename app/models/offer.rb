# == Schema Information
#
# Table name: offers
#
#  id           :bigint           not null, primary key
#  notes        :string
#  offer        :float
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  item_id      :integer
#  submitter_id :integer
#
class Offer < ApplicationRecord
end
