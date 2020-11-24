class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :work_id
      t.string :title
      t.string :date
      t.string :size
      t.string :support
      t.string :technique

      t.references :event, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end

