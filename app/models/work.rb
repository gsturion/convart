class Work < ApplicationRecord
  belongs_to :artist
  belongs_to :event
  #has_and_belongs_to_many :events
  #has_and_belongs_to_many :artists
end
