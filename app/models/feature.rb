class Feature < ActiveRecord::Base
  has_many :featureds, dependent: :destroy
  has_many :villas_with_feature, through: :featureds, source: :villa
end
