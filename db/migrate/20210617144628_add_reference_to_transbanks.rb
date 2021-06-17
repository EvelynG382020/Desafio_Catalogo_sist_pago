class AddReferenceToTransbanks < ActiveRecord::Migration[5.2]
  def change
   add_reference :transbanks, :transbankable, polymorphic: true
  end
end
