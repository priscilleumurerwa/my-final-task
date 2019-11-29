class Bride < ApplicationRecord
    #belongs_to :family
    #belongs_to :groom
    has_one :groom
end
