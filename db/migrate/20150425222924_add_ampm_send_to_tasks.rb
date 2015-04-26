class AddAmpmSendToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :ampm_send, :string
  end
end
