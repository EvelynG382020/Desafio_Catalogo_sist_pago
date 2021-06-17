class AddColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :category, polymorphic: true
  end
end
