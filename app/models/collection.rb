class Collection < ActiveRecord::Base
  
  validates :name, presence: true, uniqueness: true
  
  validates :description, length: {minimum: 30}
  
  has_many :types, dependent: :destroy
  
  has_many :selected_villas, through: :types, source: :villa
  
end
