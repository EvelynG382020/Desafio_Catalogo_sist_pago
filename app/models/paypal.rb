class Paypal < ApplicationRecord
    has_many :payments, as: :payable
end
