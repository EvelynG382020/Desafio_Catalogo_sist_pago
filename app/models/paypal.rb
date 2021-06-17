class Paypal < ApplicationRecord
    belongs_to :payable, polymorphics: true
    has_many :payments, as: :payable
end
