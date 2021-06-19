class Payment < ApplicationRecord
    belongs_to :payable, polymorphic: true
    has_many :transbanks, as: :transbankable
end
