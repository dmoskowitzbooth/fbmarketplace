# == Schema Information
#
# Table name: messages
#
#  id          :bigint           not null, primary key
#  msg_text    :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  chain_id    :integer
#  receiver_id :integer
#  sender_id   :integer
#
class Message < ApplicationRecord
end
