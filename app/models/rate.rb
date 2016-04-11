class Rate < ActiveRecord::Base
  
  validates :net, numericality: true
  
  validates :name, presence: true
  
  belongs_to :contract
  validates :contract, presence: true
end
