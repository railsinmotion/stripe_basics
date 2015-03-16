class Purchase < ActiveRecord::Base
  belongs_to :book

  monetize :cost_cents
end
