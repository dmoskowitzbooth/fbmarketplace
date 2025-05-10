# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  account_status         :string
#  address                :string
#  birthday               :date
#  buyer_status           :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  items_count            :integer
#  messages_count         :integer
#  messages_rcvd_count    :integer
#  msg_chains_count       :integer
#  msg_chains_rcvd_count  :integer
#  offers_count           :integer
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  reviews_about_count    :integer
#  reviews_count          :integer
#  sales_buyer_count      :integer
#  sales_count            :integer
#  seller_status          :string
#  verification           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

