class Villa < ActiveRecord::Base
  
  before_validation :generate_slug

  def self.search(sleeps)
    if sleeps
      min = sleeps.to_i
      max = sleeps.to_i + 4
      where("sleeps >= ? AND sleeps < ?", min, max) 
    else
      all
    end
  end
  
  def generate_slug
      self.slug ||= name.parameterize if name
  end
  
  def to_param
    slug
  end

  #scope :sleeps, -> (sleeps = 1) { where("sleeps >= ? AND sleeps < ?", sleeps, sleeps + 4) }
  
  #scope :area, -> { where("villa.area = 2")}
  
  has_attached_file :image
  
  has_many :types, dependent: :destroy
  
  has_many :collections, through: :types
  
  has_many :featureds, dependent: :destroy
  
  has_many :features, through: :featureds
  
  has_many :contracts, dependent: :destroy
  
  belongs_to :area
  
  belongs_to :owner
  
  validates :name, :strapline, presence: true, uniqueness: true
  
  validates :slug, uniqueness: true
  
  validates :reference, numericality: {greater_than_or_equal_to: 0}
  
  validates :description, length: {minimum: 30}
  
  validates_attachment :image,
    :content_type => { :content_type => ['image/jpeg', 'image/png'] },
    :size => { :less_than => 1.megabyte }
  

  
end
