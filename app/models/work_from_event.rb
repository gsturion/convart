class WorkFromEvent < ApplicationRecord
  belongs_to :event
  belongs_to :work
end
