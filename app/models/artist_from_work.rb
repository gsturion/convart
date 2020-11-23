class ArtistFromWork < ApplicationRecord
  belongs_to :work
  belongs_to :artist
end
