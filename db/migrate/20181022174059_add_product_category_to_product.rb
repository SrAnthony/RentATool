class AddProductCategoryToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_category_id, :integer
  end
end
