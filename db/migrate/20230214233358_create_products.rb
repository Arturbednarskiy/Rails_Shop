class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :position
      t.bigint :category_id
      t.text :description

      t.timestamps
    end
  end
end
