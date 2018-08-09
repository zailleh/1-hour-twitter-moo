class Like < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.bigint :user_id
      t.bigint :moo_id
      t.timestamps
    end
  end
end
