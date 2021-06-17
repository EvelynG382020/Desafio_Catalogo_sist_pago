class Oneclick < ApplicationRecord
    has_many :transbanks, as: :transbankable
end
