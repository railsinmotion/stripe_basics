class Book < ActiveRecord::Base
  has_many :purchases

  monetize :price_cents
end
