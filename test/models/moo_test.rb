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

require 'test_helper'

class MooTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
