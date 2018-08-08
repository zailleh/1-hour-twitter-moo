# == Schema Information
#
# Table name: moos
#
#  id         :bigint(8)        not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint(8)
#

class Moo < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => :likes
  belongs_to :owner, :class_name => 'User', :foreign_key => "user_id"
end
