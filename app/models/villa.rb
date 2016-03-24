class Villa < ActiveRecord::Base
  
  validates :name, :strapline, presence: true
  
  validates :reference, numericality: {greater_than_or_equal_to: 0}
  
  validates :description, length: {minimum: 30}
  
  has_many :types, dependent: :destroy
  
  has_many :collections, through: :types
  
  belongs_to :area
end