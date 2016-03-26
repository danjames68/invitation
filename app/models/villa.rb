class Villa < ActiveRecord::Base
  
  #geocoded_by :address
  #after_validation :geocode
  
  validates :name, :strapline, presence: true
  
  validates :reference, numericality: {greater_than_or_equal_to: 0}
  
  validates :description, length: {minimum: 30}
  
  has_many :types, dependent: :destroy
  
  has_many :collections, through: :types
  
  has_many :featureds, dependent: :destroy
  
  has_many :features, through: :featureds
  
  belongs_to :area
  
end
