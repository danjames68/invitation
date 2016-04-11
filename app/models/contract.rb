class Contract < ActiveRecord::Base
  
  YEARS = [2015, 2016, 2017, 2018, 2019]
  
  CURRENCIES = ['EUR', 'GBP', 'USD']
  
  CONTRACT_TYPES = ['Exclusive', 'Time Limited Exclusive', 'Priority', 'Non Exclusive']
  
  DAYS = ['Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']
  
  PAYMENT_TERMS = ['End of Month of Stay', 'Start of Month of Stay', '30 days before stay', '60 days before stay']
  
  validates :year, presence: true
  validates :villa_id, presence: true
  
  validates :currency, inclusion: { 
            in: CURRENCIES, 
            message: "must be euro, sterling or dollar."
          }
  
  validates :contract, inclusion: { 
            in: CONTRACT_TYPES, 
            message: "must be one of our contract types." 
          }
  
  validates :week_start, inclusion: { 
            in: DAYS, 
            message: "must be a day of the week."
          }
          
  belongs_to :villa
  has_many :rates, dependent: :destroy
  
end
