class AddUseridToMoos < ActiveRecord::Migration[5.2]
  def change
    add_column :moos, :user_id, :bigint
  end
end
