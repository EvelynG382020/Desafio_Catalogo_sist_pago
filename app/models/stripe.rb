class Stripe < ApplicationRecord
    has_many :payments, as: :payable
end
