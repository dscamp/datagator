class Dataset < ActiveRecord::Base
  has_many :data, dependent: :destroy
  #validates :pubId, presence: true
  #validates :privId, presence:true
  validates :name, presence:true, length: { minimum: 3 }
  validates_uniqueness_of :name, :case_sensitive=>false
  before_create :generate_pubId
  before_create :generate_privId

def generate_pubId
  self.pubId=DateTime.now.to_i.to_s+rand(10).to_s+rand(10).to_s+rand(10).to_s
end

def generate_privId
  self.privId=[*('a'..'z'),*('0'..'9')].shuffle[0,8].join
end

def to_param
  pubId
end

#
# def to_json(someObject)
#   return self.data
# end
end
