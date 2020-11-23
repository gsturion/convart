class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :work_id
      t.string :title
      t.string :date
      t.string :size
      t.string :support
      t.string :technique

      t.timestamps
    end
  end
end
