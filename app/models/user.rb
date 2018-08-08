# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string
#  email           :string
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, :email, :uniqueness => true;
  has_secure_password
  has_and_belongs_to_many :moos, :join_table => :likes
  has_many :posts, dependent: :destroy, class_name: "Moo"
end
