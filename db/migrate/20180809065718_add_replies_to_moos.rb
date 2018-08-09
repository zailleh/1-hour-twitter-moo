class AddRepliesToMoos < ActiveRecord::Migration[5.2]
  def change
    add_column :moos, :moo_id, :bigint
    add_column :moos, :is_reply, :bool
  end
end
