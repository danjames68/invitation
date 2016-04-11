class Owner < ActiveRecord::Base
  
  has_many :villas
  
  has_many :contracts, through: :villas
  
end
