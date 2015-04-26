class AddHourSendToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :hour_send, :integer
  end
end
