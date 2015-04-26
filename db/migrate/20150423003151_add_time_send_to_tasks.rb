class AddTimeSendToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :time_send, :integer
  end
end
