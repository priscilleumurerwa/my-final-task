class Family < ApplicationRecord
    # has_one :groom
    belongs_to :groom
    #has_one :bride
    #  accepts_nested_attributes_for :bride
    #  accepts_nested_attributes_for :groom
    
end
