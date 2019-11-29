class Couple < ApplicationRecord
  belongs_to :groom
  has_many :comments, dependent: :destroy
end
