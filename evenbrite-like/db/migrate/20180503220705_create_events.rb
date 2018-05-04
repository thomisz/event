class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.text :description
      t.datetime :date
      t.string :place
      t.timestamps
    end
  end
end
