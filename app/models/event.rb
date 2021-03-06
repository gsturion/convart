class Event < ApplicationRecord
  #has_and_belongs_to_many :works
  has_many :works, dependent: :destroy
  has_many :artists, through: :works
end
