class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.float :weight, null: false
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
