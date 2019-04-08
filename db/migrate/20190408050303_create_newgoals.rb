class CreateNewgoals < ActiveRecord::Migration[5.2]
  def change
    create_table :newgoals do |t|
      t.float :weight
      t.datetime :date

      t.timestamps
    end
  end
end
