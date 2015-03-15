class CreateTaskets < ActiveRecord::Migration
  def change
    create_table :taskets do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
