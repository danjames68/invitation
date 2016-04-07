class Contract < ActiveRecord::Base
  belongs_to :owner
  belongs_to :villa
end
