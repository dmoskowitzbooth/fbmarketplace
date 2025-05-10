# == Schema Information
#
# Table name: msg_chains
#
#  id             :bigint           not null, primary key
#  messages_count :integer
#  subject        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  item_id        :integer
#  receiver_id    :integer
#  sender_id      :integer
#
class MsgChain < ApplicationRecord
end
