class Groom < ApplicationRecord
    #belongs_to :family
    has_one :family
    # has_one :bride
    belongs_to :bride
end
