class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :artist_id
      t.string :name
      t.string :nationality
      t.string :delegation

      t.timestamps
    end
  end
end
