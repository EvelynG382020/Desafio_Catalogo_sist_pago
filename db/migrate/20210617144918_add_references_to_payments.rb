class AddReferencesToPayments < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :payable, polymorphic: true
  end
end
