class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :customer_id
      t.datetime :start_datetime

      t.timestamps
    end
  end
end
