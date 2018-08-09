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

require 'test_helper'

class MooTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
