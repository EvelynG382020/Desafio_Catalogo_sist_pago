class Creditcard < ApplicationRecord
    has_many :transbanks, as: :transbankable
end
