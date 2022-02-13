class Request < ApplicationRecord
  enum status: { created: 0, confirm_requested: 10, confirmed: 20 }

  belongs_to :working_time
end
