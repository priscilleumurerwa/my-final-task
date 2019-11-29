class Groom < ApplicationRecord
    #belongs_to :famille
    has_one :famille
    has_one :couple
    # has_one :bride
    belongs_to :bride
end
