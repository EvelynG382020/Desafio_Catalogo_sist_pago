class DeleteTransbanktReference < ActiveRecord::Migration[5.2]
  def change
    remove_column :transbanks, :transbankable, polymorphic: true
  end
end
