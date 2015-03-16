class AddUserIdToTaskets < ActiveRecord::Migration
  def change
    add_column :taskets, :user_id, :integer
  end
end
