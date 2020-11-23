class CreateArtistFromWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_from_works do |t|
      t.references :work, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
