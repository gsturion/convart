class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_id
      t.string :edition
      t.string :place
      t.string :inicial_date
      t.string :final_date

      t.timestamps
    end
  end
end
