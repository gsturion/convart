class Work < ApplicationRecord
  has_and_belongs_to_many :events
  has_and_belongs_to_many :artists
end
