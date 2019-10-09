class CollectorSerializer < ActiveModel::Serializer
    attributes  :id, :name
    
    has_many :handbags
  end