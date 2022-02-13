class WorkingTime < ApplicationRecord
  belongs_to :worker
  has_one :request
end
