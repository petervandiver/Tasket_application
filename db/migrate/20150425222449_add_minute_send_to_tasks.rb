class AddMinuteSendToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :minute_send, :integer
  end
end
