class Bride < ApplicationRecord
    #belongs_to :famille
    #belongs_to :groom
    has_one :groom
end
