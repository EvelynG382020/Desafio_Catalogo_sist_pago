class Transbank < ApplicationRecord
  belongs_to :transbankable, polymorphic: true
  has_many :payments, as: :payable
end
