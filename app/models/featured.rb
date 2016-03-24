class Featured < ActiveRecord::Base
  belongs_to :villa
  belongs_to :feature
end
