class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :photo
      t.string :link
      t.text :notes
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
