# == Schema Information
#
# Table name: moos
#
#  id         :bigint(8)        not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#  moo_id     :bigint(8)
#  is_reply   :boolean
#

class Moo < ApplicationRecord
  has_and_belongs_to_many :likers, :join_table => :likes, class_name: 'User'
  belongs_to :owner, :class_name => 'User', :foreign_key => "user_id"
  belongs_to :reply_to, :class_name => 'Moo', :foreign_key => "moo_id", optional: true
  has_many :replies, :class_name => 'Moo', :foreign_key => "moo_id"
end
