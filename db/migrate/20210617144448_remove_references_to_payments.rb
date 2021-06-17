class RemoveReferencesToPayments < ActiveRecord::Migration[5.2]
  def change
    remove_reference :payments, :payable, polymorphics: true
  end
end
