class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :tension
      t.integer :stock
      t.float :value
      t.float :discount

      t.timestamps
    end
  end
end
