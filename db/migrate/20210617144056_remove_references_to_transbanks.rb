class RemoveReferencesToTransbanks < ActiveRecord::Migration[5.2]
  def change
    remove_reference :transbanks, :transbankable, polymorphics: true
  end
end
